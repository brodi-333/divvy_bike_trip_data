select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select weekday_name
from "airflow"."dwh_core"."dim_date"
where weekday_name is null



      
    ) dbt_internal_test