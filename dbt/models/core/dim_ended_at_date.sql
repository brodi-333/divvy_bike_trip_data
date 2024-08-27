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
        date_day AS ended_at_date_day,
        year AS ended_at_year,
        month AS ended_at_month,
        day AS ended_at_day,
        quarter AS ended_at_quarter,
        weekday_iso AS ended_at_weekday_iso,
        weekday_name AS ended_at_weekday_name,
        month_name AS ended_at_month_name,
        weekday_indicator AS ended_at_weekday_indicator,
        week_of_year AS ended_at_week_of_year
    FROM base
)

SELECT * FROM renamed
