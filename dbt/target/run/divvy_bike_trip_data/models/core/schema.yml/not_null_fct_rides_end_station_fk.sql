select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select end_station_fk
from "airflow"."dwh_core"."fct_rides"
where end_station_fk is null



      
    ) dbt_internal_test