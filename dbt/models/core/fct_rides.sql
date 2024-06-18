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
        name
    FROM {{ ref('dim_rideable_type') }}
),
dates AS (
    SELECT
        id
    FROM {{ ref('dim_date') }}
),
times AS (
    SELECT
        time_of_day_hour,
        time_of_day_label
    FROM {{ ref('dim_time_of_day') }}
),
stations AS (
    SELECT
        station_pk,
        id,
        name
    FROM {{ ref('dim_station') }}
),
rent_types AS (
    SELECT
        id,
        name
    FROM {{ ref('dim_rent_type') }}
)

SELECT
    r.ride_id,
    rt.id AS rideable_type_fk,
    started_at_date_d.id AS started_at_date_fk,
    ended_at_date_d.id AS ended_at_date_fk,
    started_at_time_d.time_of_day_hour AS started_at_time_of_day_fk,
    ended_at_time_d.time_of_day_hour AS ended_at_time_of_day_fk,
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
    ON r.rideable_type = rt.name
LEFT JOIN dates started_at_date_d
    ON r.started_at_date = started_at_date_d.id
LEFT JOIN dates ended_at_date_d
    ON r.ended_at_date = ended_at_date_d.id
LEFT JOIN times started_at_time_d
    ON r.started_at_hour = started_at_time_d.time_of_day_hour
LEFT JOIN times ended_at_time_d
    ON r.ended_at_hour = ended_at_time_d.time_of_day_hour
LEFT JOIN stations ss
    ON r.start_station_id = ss.id
LEFT JOIN stations es
    ON r.end_station_id = es.id
LEFT JOIN rent_types ret
    ON r.member_casual = ret.name
