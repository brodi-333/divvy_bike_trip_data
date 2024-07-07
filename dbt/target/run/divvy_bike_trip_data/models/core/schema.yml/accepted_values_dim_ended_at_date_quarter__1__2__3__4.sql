select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        quarter as value_field,
        count(*) as n_records

    from "airflow"."dwh_core"."dim_ended_at_date"
    group by quarter

)

select *
from all_values
where value_field not in (
    '1','2','3','4'
)



      
    ) dbt_internal_test