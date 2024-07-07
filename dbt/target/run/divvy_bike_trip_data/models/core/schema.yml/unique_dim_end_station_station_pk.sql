select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    station_pk as unique_field,
    count(*) as n_records

from "airflow"."dwh_core"."dim_end_station"
where station_pk is not null
group by station_pk
having count(*) > 1



      
    ) dbt_internal_test