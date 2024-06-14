import os
from datetime import datetime, timedelta

from cosmos import DbtDag, ProjectConfig, ProfileConfig, ExecutionConfig, RenderConfig
from cosmos.profiles import PostgresUserPasswordProfileMapping

default_args = {
    "owner": "me",
    "retries": 5,
    "retry_delay": timedelta(minutes=2)
}

profile_config = ProfileConfig(
    profile_name="default",
    target_name="dev",
    profile_mapping=PostgresUserPasswordProfileMapping(
        conn_id="postgres_dwh_staging",
        profile_args={"schema": "dwh_staging", "port": 5432},
    )
)

render_config = RenderConfig(
    emit_datasets=False
)

dbt_dag = DbtDag(
    project_config=ProjectConfig(f"{os.environ['AIRFLOW_HOME']}/dbt"),
    operator_args={"install_deps": False},
    profile_config=profile_config,
    render_config=render_config,
    default_args=default_args,
    execution_config=ExecutionConfig(dbt_executable_path=f"{os.environ['AIRFLOW_HOME']}/dbt_venv/bin/dbt"),
    schedule_interval=None,
    start_date=datetime(2024, 1, 1),
    catchup=False,
    dag_id="dbt_dag",
)
