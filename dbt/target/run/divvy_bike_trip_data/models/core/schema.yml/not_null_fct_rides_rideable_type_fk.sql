select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select rideable_type_fk
from "airflow"."dwh_core"."fct_rides"
where rideable_type_fk is null



      
    ) dbt_internal_test