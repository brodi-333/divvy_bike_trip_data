INSERT INTO public."connection" (id,conn_id,conn_type,description,host,"schema",login,"password",port,is_encrypted,is_extra_encrypted,extra) VALUES
	 (1,'postgres_dwh_staging','postgres','','postgres','airflow','airflow','airflow',NULL,false,false,'{"options": "-c search_path=dwh_staging"}')
	 ON CONFLICT ("id") DO NOTHING;
