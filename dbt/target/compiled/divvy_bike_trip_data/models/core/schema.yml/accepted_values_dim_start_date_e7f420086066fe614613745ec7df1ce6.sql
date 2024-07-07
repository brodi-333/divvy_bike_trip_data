
    
    

with all_values as (

    select
        weekday_name as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_start_date"
    group by weekday_name

)

select *
from all_values
where value_field not in (
    'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'
)


