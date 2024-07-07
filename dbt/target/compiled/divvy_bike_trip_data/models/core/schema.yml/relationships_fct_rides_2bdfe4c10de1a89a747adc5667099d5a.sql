
    
    

with child as (
    select rideable_type_fk as from_field
    from "airflow"."dwh_core"."fct_rides"
    where rideable_type_fk is not null
),

parent as (
    select id as to_field
    from "airflow"."dwh_core"."dim_rideable_type"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


