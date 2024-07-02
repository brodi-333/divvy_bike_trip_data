SELECT *
FROM {{ ref('fct_rides') }}
WHERE duration_in_seconds <= 0
