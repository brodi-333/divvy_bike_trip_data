
    
    

with all_values as (

    select
        weekday_indicator as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_started_at_date"
    group by weekday_indicator

)

select *
from all_values
where value_field not in (
    'Weekday','Weekend'
)


