select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        weekday_name as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_end_date"
    group by weekday_name

)

select *
from all_values
where value_field not in (
    'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'
)



      
    ) dbt_internal_test