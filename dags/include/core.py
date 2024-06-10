import os

import requests
import zipfile
from pathlib import Path
from bs4 import BeautifulSoup


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
    file_name = os.path.basename(file_path)
    destination_dir = f"{extract_to_base_dir}/{file_name.replace('.', '_')}"

    if check_file_exists(destination_dir):
        return destination_dir

    with zipfile.ZipFile(file_path, "r") as zip_ref:
        zip_ref.extractall(destination_dir)

    return destination_dir


def list_files_in_directory(dir_path: str, file_mask: str = "*") -> list[str]:
    path = Path(dir_path)
    return [str(file) for file in path.glob(file_mask) if file.is_file()]
