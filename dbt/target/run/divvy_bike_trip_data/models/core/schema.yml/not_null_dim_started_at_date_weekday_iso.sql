select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select weekday_iso
from "airflow"."dwh_core"."dim_started_at_date"
where weekday_iso is null



      
    ) dbt_internal_test