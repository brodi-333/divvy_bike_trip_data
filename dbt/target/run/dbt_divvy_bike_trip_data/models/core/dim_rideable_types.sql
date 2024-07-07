
  
    

  create  table "airflow"."dwh_core"."dim_rideable_types__dbt_tmp"
  
  
    as
  
  (
    WITH rideable_types AS (
    SELECT
        ROW_NUMBER() OVER (ORDER BY rideable_type) AS id,
        rideable_type AS name
    FROM
        "airflow"."dwh_staging"."rides"
    GROUP BY rideable_type
)

SELECT * FROM rideable_types
  );
  