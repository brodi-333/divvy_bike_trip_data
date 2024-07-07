select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT *
FROM "airflow"."dwh_core"."fct_rides"
WHERE duration_in_seconds <= 0
      
    ) dbt_internal_test