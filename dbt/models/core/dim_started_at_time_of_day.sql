{{ config(
    materialized='view'
) }}

WITH base AS (
    SELECT
        time_of_day_hour,
        time_of_day_label
    FROM {{ ref('dim_time_of_day') }}
),

renamed AS (
    SELECT
        time_of_day_hour AS started_at_time_of_day_hour,
        time_of_day_label AS started_at_time_of_day_label
    FROM base
)

SELECT * FROM renamed
