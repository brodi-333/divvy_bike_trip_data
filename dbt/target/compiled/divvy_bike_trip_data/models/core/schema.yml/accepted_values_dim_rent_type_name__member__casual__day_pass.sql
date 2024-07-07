
    
    

with all_values as (

    select
        name as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_rent_type"
    group by name

)

select *
from all_values
where value_field not in (
    'member','casual','day_pass'
)


