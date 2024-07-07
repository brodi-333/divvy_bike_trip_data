select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select started_at_time_of_day_fk as from_field
    from "airflow"."dwh_core"."fct_rides"
    where started_at_time_of_day_fk is not null
),

parent as (
    select time_of_day_hour as to_field
    from "airflow"."dwh_core"."dim_time_of_day"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test