select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select weekday_indicator
from "airflow"."dwh_core"."dim_date"
where weekday_indicator is null



      
    ) dbt_internal_test