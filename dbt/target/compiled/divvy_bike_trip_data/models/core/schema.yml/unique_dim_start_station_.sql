
    
    

select
     as unique_field,
    count(*) as n_records

from "airflow"."dwh_core"."dim_start_station"
where  is not null
group by 
having count(*) > 1


