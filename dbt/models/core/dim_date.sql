WITH recursive date_series AS (
    SELECT
        '2013-01-01'::TIMESTAMP AS date_day
    UNION ALL
    SELECT
        date_day + INTERVAL '1 day'
    FROM
        date_series
    WHERE
        date_day + INTERVAL '1 day' <= '2030-12-31'
)

SELECT
    (EXTRACT(YEAR FROM date_day) * 10000 + EXTRACT(MONTH FROM date_day) * 100 + EXTRACT(DAY FROM date_day))::INTEGER AS id,
    date_day::DATE AS date_day,
    EXTRACT(YEAR FROM date_day)::INTEGER AS year,
    EXTRACT(MONTH FROM date_day)::INTEGER AS month,
    EXTRACT(DAY FROM date_day)::INTEGER AS day,
    EXTRACT(QUARTER FROM date_day)::INTEGER AS quarter,
    EXTRACT(ISODOW FROM date_day)::INTEGER AS weekday_iso,
    TO_CHAR(date_day, 'FMDay') AS weekday_name,
    TO_CHAR(date_day, 'FMMonth') AS month_name,
    CASE
        WHEN EXTRACT(ISODOW FROM date_day)::INTEGER IN(1, 2, 3, 4, 5) THEN 'Weekday'
        WHEN EXTRACT(ISODOW FROM date_day)::INTEGER IN(6, 7) THEN 'Weekend'
    END AS weekday_indicator,
    TO_CHAR(date_day, 'IW')::INTEGER AS week_of_year
FROM
    date_series
ORDER BY
    date_day
