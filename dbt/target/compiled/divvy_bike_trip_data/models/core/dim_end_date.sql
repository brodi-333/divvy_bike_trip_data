

WITH base AS (
    SELECT * FROM "airflow"."dwh_core"."dim_date"
)

SELECT * FROM base