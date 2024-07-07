
  create view "airflow"."dwh_core"."dim_ended_at_time_of_day__dbt_tmp"
    
    
  as (
    

WITH base AS (
    SELECT * FROM "airflow"."dwh_core"."dim_time_of_day"
)

SELECT * FROM base
  );