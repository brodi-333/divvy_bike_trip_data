select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select end_lat
from "airflow"."dwh_staging"."raw_rides"
where end_lat is null



      
    ) dbt_internal_test