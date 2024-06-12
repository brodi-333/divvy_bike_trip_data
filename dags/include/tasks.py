from airflow.decorators import task
from .core import *
from airflow.operators.python import get_current_context
from functools import reduce


@task
def fetch_and_parse_zip_file_names_task(url: str) -> list[str]:
    return fetch_and_parse_zip_file_names(url)


@task
def download_file_task(url: str, local_path: str) -> None:
    download_file(url, local_path)


@task
def print_list_task(items: list) -> None:
    print_list(items)


@task(map_index_template="{{ map_index }}")
def synchronize_file_task(file_name: str, base_url: str, local_dir: str) -> str:
    context = get_current_context()
    context["map_index"] = "file_name=" + file_name

    uri = f"{base_url}/{file_name}"
    local_file_path = f"{local_dir}/{file_name}"

    if check_file_exists(local_file_path):
        print(f"File {file_name} already exists")
        # todo raise AirflowSkipException(f"File {file_name} already exists")
    else:
        download_file(uri, local_file_path)

    return local_file_path


@task(map_index_template="{{ map_index }}")
def extract_file_task(file_path: str, extract_to_base_dir: str) -> str:
    context = get_current_context()
    context["map_index"] = "file_path=" + file_path

    return unzip_file_if_destination_not_exists(file_path, extract_to_base_dir)


@task(map_index_template="{{ map_index }}")
def list_files_in_directory_task(dir_path: str, file_mask: str = "*") -> list[str]:
    context = get_current_context()
    context["map_index"] = "dir_path=" + dir_path

    return list_files_in_directory(dir_path, file_mask)


@task
def merge_lists_task(lists: list) -> list:
    return reduce(lambda x, y: x + y, lists)


@task(map_index_template="{{ map_index }}")
def load_csv_to_postgres_task(csv_file_path, postgres_conn_id, target_table, required_columns) -> None:
    context = get_current_context()
    context["map_index"] = "csv_file_path=" + csv_file_path

    load_csv_to_postgres(csv_file_path, postgres_conn_id, target_table, required_columns)
