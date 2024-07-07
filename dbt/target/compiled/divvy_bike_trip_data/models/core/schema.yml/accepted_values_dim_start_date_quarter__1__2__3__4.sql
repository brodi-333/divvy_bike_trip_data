
    
    

with all_values as (

    select
        quarter as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_start_date"
    group by quarter

)

select *
from all_values
where value_field not in (
    '1','2','3','4'
)


