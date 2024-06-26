WITH start_stations AS (
    SELECT DISTINCT ON (start_station_id)
        {{
            dbt_utils.generate_surrogate_key([
                'start_station_id'
            ])
        }} AS station_pk,
        start_station_id AS id,
        start_station_name AS name,
        started_at AS created_at
    FROM
        {{ ref('stg_rides') }}
    ORDER BY
        start_station_id,
        started_at
),
end_stations AS (
    SELECT DISTINCT ON (end_station_id)
        {{
            dbt_utils.generate_surrogate_key([
                'end_station_id'
            ])
        }} AS station_pk,
        end_station_id AS id,
        end_station_name AS name,
        ended_at AS created_at
    FROM
        {{ ref('stg_rides') }}
    ORDER BY
        end_station_id,
        ended_at
)

SELECT DISTINCT ON (id)
    t.station_pk,
    COALESCE(t.id, '-1') AS id,
    COALESCE(t.name, '-1') AS name
FROM (
    SELECT *
    FROM start_stations

    UNION

    SELECT *
    FROM end_stations

    UNION

    SELECT
        '-1' AS station_pk,
        '-1' AS id,
        'Empty' AS name,
        NOW() AS created_at
) t
ORDER BY
    id DESC,
    created_at DESC
