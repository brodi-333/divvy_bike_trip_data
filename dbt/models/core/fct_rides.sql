{{ config(
  post_hook=[
      "CREATE INDEX IF NOT EXISTS fct_rides_started_at_year_idx ON {{ this }} (started_at_year)",
      "CREATE INDEX IF NOT EXISTS fct_rides_rideable_type_fk_idx ON {{ this }} (rideable_type_fk)",
      "CREATE INDEX IF NOT EXISTS fct_rides_started_at_date_fk_idx ON {{ this }} (started_at_date_fk)",
      "CREATE INDEX IF NOT EXISTS fct_rides_ended_at_date_fk_idx ON {{ this }} (ended_at_date_fk)",
      "CREATE INDEX IF NOT EXISTS fct_rides_started_at_time_of_day_fk_idx ON {{ this }} (started_at_time_of_day_fk)",
      "CREATE INDEX IF NOT EXISTS fct_rides_ended_at_time_of_day_fk_idx ON {{ this }} (ended_at_time_of_day_fk)",
      "CREATE INDEX IF NOT EXISTS fct_rides_start_station_fk_idx ON {{ this }} (start_station_fk)",
      "CREATE INDEX IF NOT EXISTS fct_rides_end_station_fk_idx ON {{ this }} (end_station_fk)",
      "CREATE INDEX IF NOT EXISTS fct_rides_rent_type_fk_idx ON {{ this }} (rent_type_fk)"
  ]
) }}

WITH rides AS (
    SELECT
        ride_id,
        rideable_type,
        (EXTRACT(YEAR FROM started_at) * 10000
            + EXTRACT(MONTH FROM started_at) * 100
            + EXTRACT(DAY FROM started_at))::INTEGER AS started_at_date,
        (EXTRACT(YEAR FROM ended_at) * 10000
            + EXTRACT(MONTH FROM ended_at) * 100
            + EXTRACT(DAY FROM ended_at))::INTEGER AS ended_at_date,
        EXTRACT(HOUR FROM started_at)::INTEGER AS started_at_hour,
        EXTRACT(HOUR FROM ended_at)::INTEGER AS ended_at_hour,
        EXTRACT(YEAR FROM started_at)::INTEGER AS started_at_year,
        DATE_TRUNC('second', started_at) AS started_at,
        DATE_TRUNC('second', ended_at) AS ended_at,
        start_station_id,
        end_station_id,
        start_lat,
        start_lng,
        end_lat,
        end_lng,
        member_casual
    FROM
        {{ ref('stg_rides') }}
),
rideable_types AS (
    SELECT
        id,
        rideable_type_name
    FROM {{ ref('dim_rideable_type') }}
),
started_at_dates AS (
    SELECT
        id
    FROM {{ ref('dim_started_at_date') }}
),
ended_at_dates AS (
    SELECT
        id
    FROM {{ ref('dim_ended_at_date') }}
),
started_at_times AS (
    SELECT
        started_at_time_of_day_hour,
        started_at_time_of_day_label
    FROM {{ ref('dim_started_at_time_of_day') }}
),
ended_at_times AS (
    SELECT
        ended_at_time_of_day_hour,
        ended_at_time_of_day_label
    FROM {{ ref('dim_ended_at_time_of_day') }}
),
start_stations AS (
    SELECT
        station_pk,
        start_station_id,
        start_station_name
    FROM {{ ref('dim_start_station') }}
),
end_stations AS (
    SELECT
        station_pk,
        end_station_id,
        end_station_name
    FROM {{ ref('dim_end_station') }}
),
rent_types AS (
    SELECT
        id,
        rent_type_name
    FROM {{ ref('dim_rent_type') }}
)

SELECT
    r.ride_id,
    rt.id AS rideable_type_fk,
    started_at_date_d.id AS started_at_date_fk,
    ended_at_date_d.id AS ended_at_date_fk,
    started_at_time_d.started_at_time_of_day_hour AS started_at_time_of_day_fk,
    ended_at_time_d.ended_at_time_of_day_hour AS ended_at_time_of_day_fk,
    r.started_at AS started_at_datetime,
    r.ended_at AS ended_at_datetime,
    r.started_at_year AS started_at_year,
    {{ datediff("r.started_at", "r.ended_at", "second") }} AS duration_in_seconds,
    COALESCE(ss.station_pk, '-1') AS start_station_fk,
    COALESCE(es.station_pk, '-1') AS end_station_fk,
    r.start_lat,
    r.start_lng,
    r.end_lat,
    r.end_lng,
    ret.id AS rent_type_fk
FROM
    rides r
LEFT JOIN rideable_types rt
    ON r.rideable_type = rt.rideable_type_name
LEFT JOIN started_at_dates started_at_date_d
    ON r.started_at_date = started_at_date_d.id
LEFT JOIN ended_at_dates ended_at_date_d
    ON r.ended_at_date = ended_at_date_d.id
LEFT JOIN started_at_times started_at_time_d
    ON r.started_at_hour = started_at_time_d.started_at_time_of_day_hour
LEFT JOIN ended_at_times ended_at_time_d
    ON r.ended_at_hour = ended_at_time_d.ended_at_time_of_day_hour
LEFT JOIN start_stations ss
    ON r.start_station_id = ss.start_station_id
LEFT JOIN end_stations es
    ON r.end_station_id = es.end_station_id
LEFT JOIN rent_types ret
    ON r.member_casual = ret.rent_type_name
WHERE r.ended_at > r.started_at
