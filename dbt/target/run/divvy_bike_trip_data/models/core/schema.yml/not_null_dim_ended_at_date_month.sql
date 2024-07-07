select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select month
from "airflow"."dwh_core"."dim_ended_at_date"
where month is null



      
    ) dbt_internal_test