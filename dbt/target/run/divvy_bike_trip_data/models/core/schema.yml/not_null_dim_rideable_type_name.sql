select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select name
from "airflow"."dwh_core"."dim_rideable_type"
where name is null



      
    ) dbt_internal_test