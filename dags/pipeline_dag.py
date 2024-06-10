from datetime import timedelta
from airflow.decorators import dag, task

import pendulum
from include.tasks import (
    fetch_and_parse_zip_file_names_task,
    print_list_task,
    synchronize_file_task,
    extract_file_task,
    list_files_in_directory_task,
    merge_lists_task
)

default_args = {
    "owner": "me",
    "retries": 5,
    "retry_delay": timedelta(minutes=2)
}


@dag(
    default_args=default_args,
    schedule="@daily",
    start_date=pendulum.datetime(2024, 1, 1, tz="UTC"),
    description="Divvy bike trip data pipeline",
    catchup=False,
    tags=["divvy"],
)
def pipeline_dag():
    bucket_url = "https://divvy-tripdata.s3.amazonaws.com"
    zip_local_dir = "/opt/airflow/storage/zip"
    extracted_local_dir = "/opt/airflow/storage/extracted"

    zip_files = fetch_and_parse_zip_file_names_task(bucket_url)
    print_list_task.override(task_id="print_remote_zip_files")(zip_files)

    local_zip_file_paths = synchronize_file_task\
        .override(trigger_rule="none_failed_min_one_success") \
        .partial(base_url=bucket_url, local_dir=zip_local_dir)\
        .expand(file_name=zip_files)
    print_list_task.override(task_id="print_local_zip_file_paths",)(local_zip_file_paths)

    extracted_directories = extract_file_task \
        .partial(extract_to_base_dir=extracted_local_dir) \
        .expand(file_path=local_zip_file_paths)
    print_list_task.override(task_id="print_extracted_directories")(extracted_directories)

    csv_file_lists = list_files_in_directory_task \
        .partial(file_mask="*.csv") \
        .expand(dir_path=extracted_directories)
    print_list_task.override(task_id="print_csv_file_lists")(csv_file_lists)

    merged_csv_file_list = merge_lists_task(csv_file_lists)
    print_list_task.override(task_id="print_merged_csv_file_list")(merged_csv_file_list)


pipeline_dag()
