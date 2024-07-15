import os
from airflow.decorators import dag
from cosmos import ProfileConfig
from cosmos.operators import DbtDocsOperator
import pendulum

from cosmos.profiles import PostgresUserPasswordProfileMapping

default_args = {
    "owner": "me",
    "retries": 0,
}


profile_config = ProfileConfig(
    profile_name="default",
    target_name="dev",
    profile_mapping=PostgresUserPasswordProfileMapping(
        conn_id="postgres_dwh_staging",
        profile_args={"schema": "dwh_staging", "port": 5432},
    )
)


@dag(
    default_args=default_args,
    schedule=None,
    start_date=pendulum.datetime(2024, 1, 1, tz="UTC"),
    description="Generate dbt documentation",
    catchup=False,
    tags=["divvy"],
)
def generate_dbt_docs():
    generate_docs = DbtDocsOperator(
        task_id='generate_docs',
        project_dir=f"{os.environ['AIRFLOW_HOME']}/dbt",
        profile_config=profile_config,
        dbt_executable_path=f"{os.environ['AIRFLOW_HOME']}/dbt_venv/bin/dbt",
        dbt_cmd_flags=["--target-path", f"{os.environ['AIRFLOW_HOME']}/dbt/target"]
    )


generate_dbt_docs()
