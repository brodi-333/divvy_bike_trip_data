
    
    

select
    time_of_day_hour as unique_field,
    count(*) as n_records

from "airflow"."dwh_core"."dim_time_of_day"
where time_of_day_hour is not null
group by time_of_day_hour
having count(*) > 1


