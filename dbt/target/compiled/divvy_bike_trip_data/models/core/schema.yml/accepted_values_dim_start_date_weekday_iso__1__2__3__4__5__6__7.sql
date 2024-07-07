
    
    

with all_values as (

    select
        weekday_iso as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_start_date"
    group by weekday_iso

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5','6','7'
)


