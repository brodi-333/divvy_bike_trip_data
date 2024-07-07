select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        weekday_indicator as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_start_date"
    group by weekday_indicator

)

select *
from all_values
where value_field not in (
    'Weekday','Weekend'
)



      
    ) dbt_internal_test