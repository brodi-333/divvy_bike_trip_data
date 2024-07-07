

WITH base AS (
    SELECT * FROM "airflow"."dwh_core"."dim_time_of_day"
)

SELECT * FROM base