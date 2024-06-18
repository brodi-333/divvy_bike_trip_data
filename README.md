# divvy_bike_trip_data

The purpose of the project is to gather, transform and visualize historical trip data of Divvy Chicagoland's bike share 
system (https://divvybikes.com) that is available to the public at:  
https://divvybikes.com/system-data  
and more precisely, in the bucket:  
https://divvy-tripdata.s3.amazonaws.com/index.html

This project can be the starting point for getting insights about bike trips: their durations, start and end locations, 
distribution of rides over months, days of week, time of day, etc.

## Technology stack and features

- ⚡ Apache Airflow as a job orchestrator
- 💾 PostgreSQL as the SQL database
- 🗂️ DBT for transformation of data
- ✅ Model tests with DBT
- 🖥️ Nginx for serving DBT documentation
- 📊 Charts and data analysis with Metabase
- 🐋 Docker Compose for development

### Airflow - DAG list

[![Airflow - DAG list](img/airflow_dags.png)](https://github.com/brodi-333/divvy_bike_trip_data)

### Airflow - pipeline DAG

[![Airflow - pipeline DAG](img/airflow_pipeline_dag.png)](https://github.com/brodi-333/divvy_bike_trip_data)

### Airflow - dbt DAG

[![Airflow - dbt DAG](img/airflow_dbt_dag.png)](https://github.com/brodi-333/divvy_bike_trip_data)

### Metabase - dashboard

[![Metabase - dashboard](img/metabase_number_of_rides.png)](https://github.com/brodi-333/divvy_bike_trip_data)

### Metabase - number of rides on map

[![Metabase - number of rides on map](img/metabase_on_map.png)](https://github.com/brodi-333/divvy_bike_trip_data)

### dbt - project documentation

[![dbt - project documentation](img/dbt_docs.png)](https://github.com/brodi-333/divvy_bike_trip_data)

### dbt - lineage graph

[![dbt - lineage graph](img/dbt_lineage_graph.png)](https://github.com/brodi-333/divvy_bike_trip_data)

## How to use it

In order to run project execute command:
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

#### Airflow
[http://127.0.0.222:8080]()  
Login with: airflow / airflow

#### Metabase:  
[http://127.0.0.223:3030]()  
Login with: admin@admin.com / Admin333!

#### DBT documentation
[http://127.0.0.224:8080]()

#### Airflow & DWH database
127.0.0.222:5432  
User: airflow  
Db: airflow  
Pass: airflow  

#### Metabase database
127.0.0.223:5432  
User: metabase  
Db: metabase  
Pass: metabase  


