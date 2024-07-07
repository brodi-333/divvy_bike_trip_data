select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select time_of_day_hour
from "airflow"."dwh_core"."dim_time_of_day"
where time_of_day_hour is null



      
    ) dbt_internal_test