import os
from datetime import datetime

from cosmos import DbtDag, ProjectConfig, ProfileConfig, ExecutionConfig
from cosmos.profiles import PostgresUserPasswordProfileMapping

profile_config = ProfileConfig(
    profile_name="default",
    target_name="dev",
    profile_mapping=PostgresUserPasswordProfileMapping(
        conn_id="postgres_dwh_staging",
        profile_args={"database": "airflow", "schema": "dwh_staging"},
    )
)

dbt_dag = DbtDag(
    project_config=ProjectConfig(f"{os.environ['AIRFLOW_HOME']}/dbt"),
    operator_args={"install_deps": False},
    profile_config=profile_config,
    execution_config=ExecutionConfig(dbt_executable_path=f"{os.environ['AIRFLOW_HOME']}/dbt_venv/bin/dbt",),
    schedule_interval="@daily",
    start_date=datetime(2024, 1, 1),
    catchup=False,
    dag_id="dbt_dag",
)
