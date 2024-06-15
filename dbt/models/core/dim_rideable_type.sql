WITH rideable_types AS (
    SELECT
        ROW_NUMBER() OVER (ORDER BY rideable_type) AS id,
        rideable_type AS name
    FROM
        {{ ref('stg_rides') }}
    GROUP BY rideable_type
    ORDER BY rideable_type
)

SELECT * FROM rideable_types
