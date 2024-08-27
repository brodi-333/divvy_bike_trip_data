{{ config(
    materialized='view'
) }}

WITH base AS (
    SELECT
        id,
        date_day,
        year,
        month,
        day,
        quarter,
        weekday_iso,
        weekday_name,
        month_name,
        weekday_indicator,
        week_of_year
    FROM {{ ref('dim_date') }}
),

renamed AS (
    SELECT
        id,
        date_day AS started_at_date_day,
        year AS started_at_year,
        month AS started_at_month,
        day AS started_at_day,
        quarter AS started_at_quarter,
        weekday_iso AS started_at_weekday_iso,
        weekday_name AS started_at_weekday_name,
        month_name AS started_at_month_name,
        weekday_indicator AS started_at_weekday_indicator,
        week_of_year AS started_at_week_of_year
    FROM base
)

SELECT * FROM renamed
