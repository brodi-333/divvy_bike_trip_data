{{ config(
    materialized='view'
) }}

WITH base AS (
    SELECT * FROM {{ ref('dim_station') }}
)

SELECT * FROM base
