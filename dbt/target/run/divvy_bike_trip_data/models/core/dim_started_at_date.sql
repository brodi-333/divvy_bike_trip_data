
  create view "airflow"."dwh_core"."dim_started_at_date__dbt_tmp"
    
    
  as (
    

WITH base AS (
    SELECT * FROM "airflow"."dwh_core"."dim_date"
)

SELECT * FROM base
  );