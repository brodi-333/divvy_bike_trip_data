WITH source AS (
    SELECT *
    FROM {{ source('raw_layer', 'raw_rides') }}
),

renamed AS (
    SELECT
        ride_id::VARCHAR(16),
        rideable_type::VARCHAR(32),
        started_at::TIMESTAMP,
        ended_at::TIMESTAMP,
        start_station_name::VARCHAR(120),
        start_station_id::VARCHAR(50),
        end_station_name::VARCHAR(120),
        end_station_id::VARCHAR(50),
        start_lat::FLOAT,
        start_lng::FLOAT,
        end_lat::FLOAT,
        end_lng::FLOAT,
        member_casual::VARCHAR(12)
    FROM source
)

SELECT *
FROM renamed
