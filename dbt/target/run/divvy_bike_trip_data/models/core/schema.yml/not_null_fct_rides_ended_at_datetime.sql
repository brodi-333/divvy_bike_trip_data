select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ended_at_datetime
from "airflow"."dwh_core"."fct_rides"
where ended_at_datetime is null



      
    ) dbt_internal_test