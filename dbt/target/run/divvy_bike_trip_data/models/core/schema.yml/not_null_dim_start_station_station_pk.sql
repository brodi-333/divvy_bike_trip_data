select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select station_pk
from "airflow"."dwh_core"."dim_start_station"
where station_pk is null



      
    ) dbt_internal_test