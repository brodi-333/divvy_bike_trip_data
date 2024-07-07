WITH times AS (
    SELECT
        generate_series AS time_of_day_hour
    FROM
        generate_series(0, 23, 1)
),
time_labels AS (
    SELECT
        time_of_day_hour,
        CASE
            WHEN time_of_day_hour >= 0 AND time_of_day_hour < 6 THEN 'Night'
            WHEN time_of_day_hour >= 6 AND time_of_day_hour < 12 THEN 'Morning'
            WHEN time_of_day_hour >= 12 AND time_of_day_hour < 18 THEN 'Afternoon'
            WHEN time_of_day_hour >= 18 AND time_of_day_hour <= 23 THEN 'Evening'
        END AS time_of_day_label
    FROM
        times
)

SELECT
    time_of_day_hour,
    time_of_day_label

FROM
    time_labels