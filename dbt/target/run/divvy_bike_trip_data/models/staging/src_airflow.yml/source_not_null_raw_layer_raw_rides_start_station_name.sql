select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select start_station_name
from "airflow"."dwh_staging"."raw_rides"
where start_station_name is null



      
    ) dbt_internal_test