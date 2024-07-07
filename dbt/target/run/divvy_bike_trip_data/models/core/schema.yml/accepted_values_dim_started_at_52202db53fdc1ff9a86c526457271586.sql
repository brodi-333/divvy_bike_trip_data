select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        time_of_day_label as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_started_at_time_of_day"
    group by time_of_day_label

)

select *
from all_values
where value_field not in (
    'Night','Morning','Afternoon','Evening'
)



      
    ) dbt_internal_test