
  
    

  create  table "airflow"."dwh_core"."fct_rides__dbt_tmp"
  
  
    as
  
  (
    WITH rides AS (
    SELECT
        ride_id,
        rideable_type
    FROM
        "airflow"."dwh_staging"."raw_rides"
),
rideable_types as (
    SELECT
        id,
        name
    FROM "airflow"."dwh_core"."dim_rideable_type"
)

SELECT
    r.ride_id,
    rt.id AS dim_rideable_type_id
FROM
    rides r
LEFT JOIN rideable_types rt
    ON r.rideable_type = rt.name
  );
  