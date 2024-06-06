from airflow.decorators import task
from .core import fetch_and_parse_zip_file_names, download_file, check_file_exists, print_list
from airflow.operators.python import get_current_context


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
def synchronize_files_group(file_name: str, base_url: str, local_dir: str) -> str:
    context = get_current_context()
    context["map_index"] = "file_name=" + file_name

    uri = f"{base_url}/{file_name}"
    local_file_path = f"{local_dir}/{file_name}"

    if check_file_exists(local_file_path):
        print(f"File {file_name} already exists")
    else:
        download_file(uri, local_file_path)

    return local_file_path
