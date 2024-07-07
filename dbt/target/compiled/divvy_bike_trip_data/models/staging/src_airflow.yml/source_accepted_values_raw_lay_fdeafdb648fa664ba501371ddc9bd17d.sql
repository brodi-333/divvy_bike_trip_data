
    
    

with all_values as (

    select
        rideable_type as value_field,
        count(*) as n_records

    from "airflow"."dwh_staging"."raw_rides"
    group by rideable_type

)

select *
from all_values
where value_field not in (
    'classic_bike','docked_bike','electric_bike'
)


