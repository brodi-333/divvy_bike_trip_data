select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select started_at_time_of_day_fk
from "airflow"."dwh_core"."fct_rides"
where started_at_time_of_day_fk is null



      
    ) dbt_internal_test