select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select duration_in_seconds
from "airflow"."dwh_core"."fct_rides"
where duration_in_seconds is null



      
    ) dbt_internal_test