from datetime import timedelta
from airflow.decorators import dag
from airflow.providers.postgres.operators.postgres import PostgresOperator
from airflow.operators.bash import BashOperator
from airflow.operators.trigger_dagrun import TriggerDagRunOperator

import pendulum
from include.tasks import (
    fetch_and_parse_zip_file_names_task,
    print_list_task,
    synchronize_file_task,
    extract_file_task,
    list_files_in_directory_task,
    merge_lists_task,
    load_csv_to_postgres_task
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
    postgres_conn_id = "postgres_dwh_staging"
    postgres_target_table = "raw_rides"

    required_columns = [
        "ride_id",
        "rideable_type",
        "started_at",
        "ended_at",
        "start_station_name",
        "start_station_id",
        "end_station_name",
        "end_station_id",
        "start_lat",
        "start_lng",
        "end_lat",
        "end_lng",
        "member_casual",
    ]

    zip_files = fetch_and_parse_zip_file_names_task(bucket_url)
    print_list_task.override(task_id="print_remote_zip_files")(zip_files)

    local_zip_file_paths = synchronize_file_task\
        .override(trigger_rule="none_failed_min_one_success") \
        .partial(base_url=bucket_url, local_dir=zip_local_dir, extract_to_base_dir=extracted_local_dir)\
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

    create_stage_table_task = PostgresOperator(
        task_id="create_raw_rides_table_task",
        postgres_conn_id=postgres_conn_id,
        sql="""
            CREATE TABLE IF NOT EXISTS raw_rides (
                ride_id VARCHAR PRIMARY KEY,
                rideable_type VARCHAR,
                started_at VARCHAR,
                ended_at VARCHAR,
                start_station_name VARCHAR,
                start_station_id VARCHAR,
                end_station_name VARCHAR,
                end_station_id VARCHAR,
                start_lat VARCHAR,
                start_lng VARCHAR,
                end_lat VARCHAR,
                end_lng VARCHAR,
                member_casual VARCHAR
            );
            """,
    )

    trigger_dbt_run = TriggerDagRunOperator(
        task_id="trigger_dbt_run",
        trigger_dag_id="dbt_dag",
        wait_for_completion=True,
        trigger_rule="all_done"
    )

    delete_zip_task = BashOperator(
        task_id='delete_zip_task',
        bash_command=f'rm -rf {zip_local_dir}/*.zip',
        trigger_rule="all_done"
    )

    create_stage_table_task >> \
        load_csv_to_postgres_task \
        .override(
            trigger_rule="all_done",
            max_active_tis_per_dag=1) \
        .partial(
            postgres_conn_id=postgres_conn_id,
            target_table=postgres_target_table,
            required_columns=required_columns) \
        .expand(csv_file_path=merged_csv_file_list) >> \
        [trigger_dbt_run, delete_zip_task]


pipeline_dag()
