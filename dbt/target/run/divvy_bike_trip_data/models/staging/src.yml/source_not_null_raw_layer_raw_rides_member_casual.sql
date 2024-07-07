select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select member_casual
from "airflow"."dwh_staging"."raw_rides"
where member_casual is null



      
    ) dbt_internal_test