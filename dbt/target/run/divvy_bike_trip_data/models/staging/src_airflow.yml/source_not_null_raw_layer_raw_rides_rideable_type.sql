select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select rideable_type
from "airflow"."dwh_staging"."raw_rides"
where rideable_type is null



      
    ) dbt_internal_test