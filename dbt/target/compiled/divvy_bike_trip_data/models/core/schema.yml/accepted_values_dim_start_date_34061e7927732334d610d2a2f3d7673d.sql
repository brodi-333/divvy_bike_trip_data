
    
    

with all_values as (

    select
        month_name as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_start_date"
    group by month_name

)

select *
from all_values
where value_field not in (
    'January','February','March','April','May','June','July','August','September','October','November','December'
)

