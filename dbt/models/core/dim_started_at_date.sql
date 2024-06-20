{{ config(
    materialized='view'
) }}

WITH base AS (
    SELECT * FROM {{ ref('dim_date') }}
)

SELECT * FROM base
