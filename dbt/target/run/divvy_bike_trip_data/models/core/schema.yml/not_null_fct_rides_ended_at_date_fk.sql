select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ended_at_date_fk
from "airflow"."dwh_core"."fct_rides"
where ended_at_date_fk is null



      
    ) dbt_internal_test