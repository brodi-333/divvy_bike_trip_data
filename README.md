# divvy_bike_trip_data


Init:
```
docker compose up
```

Build docker image - otherwise dependencies defined in requirements will be fetched each time on startup.
```
docker build . --tag=airflow_divvy:latest
```

Then change image in .env.local (create this file if not exists):
```
AIRFLOW_IMAGE_NAME=airflow_divvy:latest
```

## Services

Airflow:
[http://localhost:8080]()

Metabase:
[http://127.0.0.223:3030]()

Airflow & DWH database:
127.0.0.222:5432

Metabase database:
127.0.0.223:5432