
    
    

select
    ride_id as unique_field,
    count(*) as n_records

from "airflow"."dwh_core"."fct_rides"
where ride_id is not null
group by ride_id
having count(*) > 1


