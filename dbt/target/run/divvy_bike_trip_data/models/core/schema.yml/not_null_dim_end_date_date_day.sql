select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select date_day
from "airflow"."dwh_core"."dim_end_date"
where date_day is null



      
    ) dbt_internal_test