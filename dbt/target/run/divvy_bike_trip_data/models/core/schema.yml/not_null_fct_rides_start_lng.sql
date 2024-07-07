select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select start_lng
from "airflow"."dwh_core"."fct_rides"
where start_lng is null



      
    ) dbt_internal_test