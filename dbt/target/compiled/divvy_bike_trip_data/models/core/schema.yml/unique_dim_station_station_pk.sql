
    
    

select
    station_pk as unique_field,
    count(*) as n_records

from "airflow"."dwh_core"."dim_station"
where station_pk is not null
group by station_pk
having count(*) > 1


