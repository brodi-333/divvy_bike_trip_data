select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        weekday_iso as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_date"
    group by weekday_iso

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5','6','7'
)



      
    ) dbt_internal_test