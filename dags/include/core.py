import os

import requests
import zipfile
from pathlib import Path
from bs4 import BeautifulSoup
from sqlalchemy.dialects.postgresql import insert
from airflow.providers.postgres.hooks.postgres import PostgresHook
import pandas as pd
from airflow.exceptions import AirflowSkipException


def fetch_page_content(url: str) -> str:
    response = requests.get(url)
    response.raise_for_status()
    return response.text


def parse_zip_file_names(page_content: str) -> list[str]:
    soup = BeautifulSoup(page_content, "xml")
    file_names = []
    for content in soup.find_all("Contents"):
        key = content.find("Key").text
        if key.endswith(".zip"):
            file_names.append(key)
    return file_names


def fetch_and_parse_zip_file_names(url: str) -> list[str]:
    content = fetch_page_content(url)
    file_names = parse_zip_file_names(content)
    return file_names


def download_file(uri: str, local_path: str) -> None:
    response = requests.get(uri)
    response.raise_for_status()
    with open(local_path, "wb") as file:
        file.write(response.content)


def check_file_exists(path: str) -> bool:
    return os.path.exists(path)


def print_list(items: list) -> None:
    for item in items:
        print(item)


def unzip_file_if_destination_not_exists(file_path: str, extract_to_base_dir: str) -> str:
    directory_name = get_directory_name_for_zip_file(file_path)
    destination_dir = f"{extract_to_base_dir}/{directory_name}"

    if check_file_exists(destination_dir):
        return destination_dir

    with zipfile.ZipFile(file_path, "r") as zip_ref:
        zip_ref.extractall(destination_dir)

    return destination_dir


def get_directory_name_for_zip_file(file_path: str):
    file_name = os.path.basename(file_path)
    return file_name.replace('.', '_')


def list_files_in_directory(dir_path: str, file_mask: str = "*") -> list[str]:
    path = Path(dir_path)
    return [str(file) for file in path.glob(file_mask) if file.is_file()]


def are_required_columns_present(df: pd.DataFrame, required_columns: list[str]) -> bool:
    df_columns = df.columns.tolist()
    missing_columns = [col for col in required_columns if col not in df_columns]
    if missing_columns:
        return False
    return True


def load_csv_to_postgres(csv_file_path, postgres_conn_id, target_table, required_columns):
    df = pd.read_csv(csv_file_path)

    if not are_required_columns_present(df, required_columns):
        raise AirflowSkipException(f"File {csv_file_path} does not contain required columns")

    df = df[required_columns]

    postgres_hook = PostgresHook(postgres_conn_id=postgres_conn_id)
    engine = postgres_hook.get_sqlalchemy_engine()
    df.to_sql(target_table, engine, if_exists='append', index=False, chunksize=4096)
