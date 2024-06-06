from datetime import timedelta
from airflow.decorators import dag, task

import pendulum
from include.tasks import fetch_and_parse_zip_file_names_task, print_list_task, synchronize_files_group

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

    zip_files = fetch_and_parse_zip_file_names_task(bucket_url)
    print_list_task.override(task_id="print_remote_zip_files")(zip_files)

    local_zip_files = synchronize_files_group\
        .partial(base_url=bucket_url, local_dir=zip_local_dir)\
        .expand(file_name=zip_files)
    print_list_task.override(task_id="print_local_zip_file_paths")(local_zip_files)


pipeline_dag()
