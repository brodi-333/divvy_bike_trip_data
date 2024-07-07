
    
    

select
    id as unique_field,
    count(*) as n_records

from "airflow"."dwh_core"."dim_rideable_type"
where id is not null
group by id
having count(*) > 1


