
    
    

with child as (
    select ended_at_date_fk as from_field
    from "airflow"."dwh_core"."fct_rides"
    where ended_at_date_fk is not null
),

parent as (
    select id as to_field
    from "airflow"."dwh_core"."dim_end_date"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


