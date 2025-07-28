from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.bash import BashOperator

default_args = {
    "owner": "data-eng",
    "depends_on_past": False,
    "retries": 1,
    "retry_delay": timedelta(minutes=5),
}

with DAG(
    dag_id="example_etl_dag",
    start_date=datetime(2024, 1, 1),
    schedule_interval="@daily",
    catchup=False,
    default_args=default_args,
    tags=["tech-test"],
):
    run_etl = BashOperator(
        task_id="run_etl",
        bash_command="python /opt/etl/src/etl_job.py --input /opt/data/raw/sample.csv --out /opt/data/processed/out.parquet",
    )

    run_etl
