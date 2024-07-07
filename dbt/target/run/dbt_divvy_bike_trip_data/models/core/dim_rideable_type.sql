
  
    

  create  table "airflow"."dwh_core"."dim_rideable_type__dbt_tmp"
  
  
    as
  
  (
    WITH rideable_types AS (
    SELECT
        ROW_NUMBER() OVER (ORDER BY rideable_type) AS id,
        rideable_type AS name
    FROM
        "airflow"."dwh_staging"."raw_rides"
    GROUP BY rideable_type
    ORDER BY rideable_type
)

SELECT * FROM rideable_types
  );
  