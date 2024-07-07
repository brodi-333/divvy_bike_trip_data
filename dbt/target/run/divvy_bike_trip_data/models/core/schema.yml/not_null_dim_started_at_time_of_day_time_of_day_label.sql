select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select time_of_day_label
from "airflow"."dwh_core"."dim_started_at_time_of_day"
where time_of_day_label is null



      
    ) dbt_internal_test