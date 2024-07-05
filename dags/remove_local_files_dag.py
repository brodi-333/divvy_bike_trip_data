from airflow.decorators import dag
from airflow.operators.bash import BashOperator
from datetime import timedelta

default_args = {
    "owner": "me",
    "retries": 5,
    "retry_delay": timedelta(minutes=2)
}


@dag(
    default_args=default_args,
    schedule=None,
    description="Delete local files and folders to enforce full load",
    catchup=False,
    tags=["divvy"],
)
def remove_local_files_dag():
    zip_local_dir = "/opt/airflow/storage/zip"
    extracted_local_dir = "/opt/airflow/storage/extracted"

    delete_zip_task = BashOperator(
        task_id='delete_zip_task',
        bash_command=f'rm -rf {zip_local_dir}/*.zip',
    )

    delete_extracted_task = BashOperator(
        task_id='delete_extracted_task',
        bash_command=f'rm -rf {extracted_local_dir}/*',
    )


remove_local_files_dag()
