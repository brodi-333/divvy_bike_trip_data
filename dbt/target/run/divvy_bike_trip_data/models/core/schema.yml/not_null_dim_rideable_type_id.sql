select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "airflow"."dwh_core"."dim_rideable_type"
where id is null



      
    ) dbt_internal_test