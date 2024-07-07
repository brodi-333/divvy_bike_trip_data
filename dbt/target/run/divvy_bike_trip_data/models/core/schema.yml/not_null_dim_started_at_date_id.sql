select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "airflow"."dwh_core"."dim_started_at_date"
where id is null



      
    ) dbt_internal_test