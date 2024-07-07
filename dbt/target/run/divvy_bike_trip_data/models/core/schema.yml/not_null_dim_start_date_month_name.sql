select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select month_name
from "airflow"."dwh_core"."dim_start_date"
where month_name is null



      
    ) dbt_internal_test