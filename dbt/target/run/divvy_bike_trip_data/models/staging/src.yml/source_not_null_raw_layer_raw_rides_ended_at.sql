select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ended_at
from "airflow"."dwh_staging"."raw_rides"
where ended_at is null



      
    ) dbt_internal_test