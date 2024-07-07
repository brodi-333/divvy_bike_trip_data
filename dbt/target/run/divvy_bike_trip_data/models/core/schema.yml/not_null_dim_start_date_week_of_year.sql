select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select week_of_year
from "airflow"."dwh_core"."dim_start_date"
where week_of_year is null



      
    ) dbt_internal_test