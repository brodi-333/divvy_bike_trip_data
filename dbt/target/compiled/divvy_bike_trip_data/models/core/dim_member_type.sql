WITH member_types AS (
    SELECT
        ROW_NUMBER() OVER (ORDER BY member_casual) AS id,
        member_casual AS name
    FROM
        "airflow"."dwh_staging"."stg_rides"
    GROUP BY member_casual
    ORDER BY member_casual
)

SELECT * FROM member_types