select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select year
from "airflow"."dwh_core"."dim_end_date"
where year is null



      
    ) dbt_internal_test