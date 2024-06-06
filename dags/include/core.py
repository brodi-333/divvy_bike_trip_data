import os

import requests
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
