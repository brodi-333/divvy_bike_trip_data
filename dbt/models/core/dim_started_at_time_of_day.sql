{{ config(
    materialized='view'
) }}

WITH base AS (
    SELECT * FROM {{ ref('dim_time_of_day') }}
)

SELECT * FROM base
