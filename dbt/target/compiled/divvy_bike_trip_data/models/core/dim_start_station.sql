

WITH base AS (
    SELECT * FROM "airflow"."dwh_core"."dim_station"
)

SELECT * FROM base