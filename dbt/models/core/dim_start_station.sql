{{ config(
    materialized='view'
) }}

WITH base AS (
    SELECT
        station_pk,
        id,
        name
    FROM {{ ref('dim_station') }}
),

renamed AS (
    SELECT
        station_pk,
        id AS start_station_id,
        name AS start_station_name
    FROM base
)

SELECT * FROM renamed
