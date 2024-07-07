select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        member_casual as value_field,
        count(*) as n_records

    from "airflow"."dwh_staging"."raw_rides"
    group by member_casual

)

select *
from all_values
where value_field not in (
    'member','casual','day_pass'
)



      
    ) dbt_internal_test