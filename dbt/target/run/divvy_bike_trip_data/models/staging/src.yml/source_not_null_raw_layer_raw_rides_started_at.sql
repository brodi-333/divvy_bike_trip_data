select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select started_at
from "airflow"."dwh_staging"."raw_rides"
where started_at is null



      
    ) dbt_internal_test