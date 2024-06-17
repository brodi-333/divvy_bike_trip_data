INSERT INTO metabase_table (id,created_at,updated_at,"name",description,entity_type,active,db_id,display_name,visibility_type,"schema",points_of_interest,caveats,show_in_getting_started,field_order,initial_sync_status,is_upload,database_require_filter) VALUES
	 (12,'2024-06-16 03:31:25.747505+02','2024-06-16 04:04:10.808943+02','dim_time_of_day',NULL,'entity/GenericTable',true,2,'Time Of Day',NULL,'dwh_core',NULL,NULL,false,'database','complete',false,NULL),
	 (9,'2024-06-11 14:29:05.858198+02','2024-06-16 04:04:10.808943+02','dim_rideable_type',NULL,'entity/GenericTable',true,2,'Rideable Type',NULL,'dwh_core',NULL,NULL,false,'database','complete',false,NULL),
	 (10,'2024-06-11 14:29:05.893789+02','2024-06-16 04:04:10.808943+02','dim_date',NULL,'entity/GenericTable',true,2,'Date',NULL,'dwh_core',NULL,NULL,false,'database','complete',false,NULL),
	 (11,'2024-06-11 14:29:05.919251+02','2024-06-16 04:04:10.808943+02','fct_rides',NULL,'entity/GenericTable',true,2,'Rides',NULL,'dwh_core',NULL,NULL,false,'database','complete',false,NULL);
INSERT INTO metabase_field (id,created_at,updated_at,"name",base_type,semantic_type,active,description,preview_display,"position",table_id,parent_id,display_name,visibility_type,fk_target_field_id,last_analyzed,points_of_interest,caveats,fingerprint,fingerprint_version,database_type,has_field_values,settings,database_position,custom_position,effective_type,coercion_strategy,nfc_path,database_required,json_unfolding,database_is_auto_increment,database_indexed,database_partitioned) VALUES
	 (90,'2024-06-16 03:37:46.261338+02','2024-06-16 03:39:30.303628+02','started_at_time_of_day_fk','type/Integer','type/FK',true,NULL,true,4,11,NULL,'Started At Time Of Day Fk','normal',92,'2024-06-16 03:37:46.878377+02',NULL,NULL,'{"global":{"distinct-count":24,"nil%":0.0},"type":{"type/Number":{"min":0.0,"q1":11.091631629210989,"q3":16.935401665018567,"max":23.0,"sd":4.447990284584397,"avg":13.7533}}}',5,'int4','auto-list',NULL,4,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (89,'2024-06-16 03:37:46.261338+02','2024-06-16 03:39:40.094988+02','ended_at_time_of_day_fk','type/Integer','type/FK',true,NULL,true,5,11,NULL,'Ended At Time Of Day Fk','normal',92,'2024-06-16 03:37:46.878377+02',NULL,NULL,'{"global":{"distinct-count":24,"nil%":0.0},"type":{"type/Number":{"min":0.0,"q1":11.323877040543673,"q3":17.14571419043549,"max":23.0,"sd":4.472977039104856,"avg":13.9346}}}',5,'int4','auto-list',NULL,5,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (91,'2024-06-16 03:37:55.215048+02','2024-06-16 03:37:55.779895+02','time_of_day_label','type/Text','type/Category',true,NULL,true,1,12,NULL,'Time Of Day Label','normal',NULL,'2024-06-16 03:37:55.779895+02',NULL,NULL,'{"global":{"distinct-count":4,"nil%":0.0},"type":{"type/Text":{"percent-json":0.0,"percent-url":0.0,"percent-email":0.0,"percent-state":0.0,"average-length":7.0}}}',5,'text','auto-list',NULL,1,0,'type/Text',NULL,NULL,false,false,false,NULL,NULL),
	 (92,'2024-06-16 03:37:55.215048+02','2024-06-16 03:39:16.174046+02','time_of_day_hour','type/Integer','type/PK',true,NULL,true,0,12,NULL,'Time Of Day Hour','normal',NULL,'2024-06-16 03:37:55.779895+02',NULL,NULL,'{"global":{"distinct-count":24,"nil%":0.0},"type":{"type/Number":{"min":0.0,"q1":5.5,"q3":17.5,"max":23.0,"sd":7.0710678118654755,"avg":11.5}}}',5,'int4','auto-list',NULL,0,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (96,'2024-06-16 04:04:10.741288+02','2024-06-16 04:04:11.514026+02','start_lng','type/Float','type/Longitude',true,NULL,true,7,11,NULL,'Start Lng','normal',NULL,'2024-06-16 04:04:11.514026+02',NULL,NULL,'{"global":{"distinct-count":3035,"nil%":0.0},"type":{"type/Number":{"min":-87.774446,"q1":-87.66053961201675,"q3":-87.62970772824151,"max":-87.52823173999786,"sd":0.026489383816151887,"avg":-87.64637279140966}}}',5,'float8',NULL,NULL,7,0,'type/Float',NULL,NULL,false,false,false,NULL,NULL),
	 (93,'2024-06-16 04:04:10.741288+02','2024-06-16 04:04:11.514026+02','end_lat','type/Float','type/Latitude',true,NULL,true,8,11,NULL,'End Lat','normal',NULL,'2024-06-16 04:04:11.514026+02',NULL,NULL,'{"global":{"distinct-count":2878,"nil%":0.0013},"type":{"type/Number":{"min":41.68,"q1":41.88245904333142,"q3":41.93119777931498,"max":42.064854,"sd":0.046465881882911765,"avg":41.90304013708457}}}',5,'float8',NULL,NULL,8,0,'type/Float',NULL,NULL,false,false,false,NULL,NULL),
	 (94,'2024-06-16 04:04:10.741288+02','2024-06-16 04:04:11.514026+02','end_lng','type/Float','type/Longitude',true,NULL,true,9,11,NULL,'End Lng','normal',NULL,'2024-06-16 04:04:11.514026+02',NULL,NULL,'{"global":{"distinct-count":2871,"nil%":0.0013},"type":{"type/Number":{"min":-87.774446,"q1":-87.66136222166664,"q3":-87.62968824112457,"max":-87.53481388092041,"sd":0.02653074444593018,"avg":-87.64677038804705}}}',5,'float8',NULL,NULL,9,0,'type/Float',NULL,NULL,false,false,false,NULL,NULL),
	 (95,'2024-06-16 04:04:10.741288+02','2024-06-16 04:04:11.514026+02','start_lat','type/Float','type/Latitude',true,NULL,true,6,11,NULL,'Start Lat','normal',NULL,'2024-06-16 04:04:11.514026+02',NULL,NULL,'{"global":{"distinct-count":3049,"nil%":0.0},"type":{"type/Number":{"min":41.68,"q1":41.88236476402309,"q3":41.93041340737823,"max":42.064854,"sd":0.046257671504609986,"avg":41.9027919484119}}}',5,'float8',NULL,NULL,6,0,'type/Float',NULL,NULL,false,false,false,NULL,NULL),
	 (75,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','weekday_iso','type/Integer','type/Category',true,NULL,true,6,10,NULL,'Weekday Iso','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":7,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":2.249501197259292,"q3":5.749733759318424,"max":7.0,"sd":2.0001521086057643,"avg":3.9996957712199572}}}',5,'int4','auto-list',NULL,6,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (76,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','weekday_name','type/Text','type/Category',true,NULL,true,7,10,NULL,'Weekday Name','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":7,"nil%":0.0},"type":{"type/Text":{"percent-json":0.0,"percent-url":0.0,"percent-email":0.0,"percent-state":0.0,"average-length":9.0}}}',5,'text','auto-list',NULL,7,0,'type/Text',NULL,NULL,false,false,false,NULL,NULL);
INSERT INTO metabase_field (id,created_at,updated_at,"name",base_type,semantic_type,active,description,preview_display,"position",table_id,parent_id,display_name,visibility_type,fk_target_field_id,last_analyzed,points_of_interest,caveats,fingerprint,fingerprint_version,database_type,has_field_values,settings,database_position,custom_position,effective_type,coercion_strategy,nfc_path,database_required,json_unfolding,database_is_auto_increment,database_indexed,database_partitioned) VALUES
	 (77,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','year','type/Integer','type/Category',true,NULL,true,2,10,NULL,'Year','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":18,"nil%":0.0},"type":{"type/Number":{"min":2013.0,"q1":2017.0,"q3":2026.0,"max":2030.0,"sd":5.188131128689841,"avg":2021.5003042287801}}}',5,'int4','auto-list',NULL,2,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (78,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','month','type/Integer','type/Category',true,NULL,true,3,10,NULL,'Month','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":12,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":3.5396432500646267,"q3":9.518664598715468,"max":12.0,"sd":3.44887105741937,"avg":6.523273501673258}}}',5,'int4','auto-list',NULL,3,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (79,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','week_of_year','type/Integer',NULL,true,NULL,true,10,10,NULL,'Week Of Year','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":53,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":13.535714285714286,"q3":39.62301587301587,"max":53.0,"sd":15.062083649464066,"avg":26.58077274110131}}}',5,'int4','auto-list',NULL,10,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (80,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','weekday_indicator','type/Text','type/Category',true,NULL,true,9,10,NULL,'Weekday Indicator','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":2,"nil%":0.0},"type":{"type/Text":{"percent-json":0.0,"percent-url":0.0,"percent-email":0.0,"percent-state":0.0,"average-length":7.0}}}',5,'text','auto-list',NULL,9,0,'type/Text',NULL,NULL,false,false,false,NULL,NULL),
	 (81,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','day','type/Integer',NULL,true,NULL,true,4,10,NULL,'Day','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":31,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":8.108796296296296,"q3":23.32638888888889,"max":31.0,"sd":8.800334974744898,"avg":15.728627928202007}}}',5,'int4','auto-list',NULL,4,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (82,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','id','type/Integer','type/PK',true,NULL,true,0,10,NULL,'ID','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,NULL,5,'int4',NULL,NULL,0,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (83,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','quarter','type/Integer','type/Category',true,NULL,true,5,10,NULL,'Quarter','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":4,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":1.510882385662642,"q3":3.507548309178744,"max":4.0,"sd":1.117132515462843,"avg":2.508670520231214}}}',5,'int4','auto-list',NULL,5,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (84,'2024-06-12 00:37:26.187311+02','2024-06-12 00:37:28.461152+02','month_name','type/Text','type/Category',true,NULL,true,8,10,NULL,'Month Name','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":12,"nil%":0.0},"type":{"type/Text":{"percent-json":0.0,"percent-url":0.0,"percent-email":0.0,"percent-state":0.0,"average-length":9.0}}}',5,'text','auto-list',NULL,8,0,'type/Text',NULL,NULL,false,false,false,NULL,NULL),
	 (88,'2024-06-12 00:37:26.243893+02','2024-06-12 00:37:28.461152+02','ride_id','type/Text',NULL,true,NULL,true,0,11,NULL,'Ride ID','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":9999,"nil%":0.0},"type":{"type/Text":{"percent-json":0.0,"percent-url":0.0,"percent-email":0.0,"percent-state":0.0,"average-length":16.0}}}',5,'varchar',NULL,NULL,0,0,'type/Text',NULL,NULL,false,false,false,NULL,NULL),
	 (72,'2024-06-12 00:37:26.137082+02','2024-06-12 00:37:28.461152+02','id','type/BigInteger','type/PK',true,NULL,true,0,9,NULL,'ID','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,NULL,5,'int8',NULL,NULL,0,0,'type/BigInteger',NULL,NULL,false,false,false,NULL,NULL);
INSERT INTO metabase_field (id,created_at,updated_at,"name",base_type,semantic_type,active,description,preview_display,"position",table_id,parent_id,display_name,visibility_type,fk_target_field_id,last_analyzed,points_of_interest,caveats,fingerprint,fingerprint_version,database_type,has_field_values,settings,database_position,custom_position,effective_type,coercion_strategy,nfc_path,database_required,json_unfolding,database_is_auto_increment,database_indexed,database_partitioned) VALUES
	 (73,'2024-06-12 00:37:26.137082+02','2024-06-12 00:37:28.461152+02','name','type/Text','type/Name',true,NULL,true,1,9,NULL,'Name','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":1,"nil%":0.0},"type":{"type/Text":{"percent-json":0.0,"percent-url":0.0,"percent-email":0.0,"percent-state":0.0,"average-length":11.0}}}',5,'varchar','auto-list',NULL,1,0,'type/Text',NULL,NULL,false,false,false,NULL,NULL),
	 (87,'2024-06-12 00:37:26.243893+02','2024-06-12 00:40:22.329128+02','started_at_date_fk','type/Integer','type/FK',true,NULL,true,2,11,NULL,'Started At Date Fk','normal',82,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":30,"nil%":0.0},"type":{"type/Number":{"min":2.0200401E7,"q1":2.020040781861735E7,"q3":2.020042241651664E7,"max":2.020043E7,"sd":8.442526565873605,"avg":2.02004154591E7}}}',5,'int4','auto-list',NULL,2,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (85,'2024-06-12 00:37:26.243893+02','2024-06-12 00:40:39.247891+02','rideable_type_fk','type/BigInteger','type/FK',true,NULL,true,1,11,NULL,'Rideable Type Fk','normal',72,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":1,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":1.0,"q3":1.0,"max":1.0,"sd":0.0,"avg":1.0}}}',5,'int8','auto-list',NULL,1,0,'type/BigInteger',NULL,NULL,false,false,false,NULL,NULL),
	 (86,'2024-06-12 00:37:26.243893+02','2024-06-12 00:40:30.480456+02','ended_at_date_fk','type/Integer','type/FK',true,NULL,true,3,11,NULL,'Ended At Date Fk','normal',82,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":33,"nil%":0.0},"type":{"type/Number":{"min":2.0200401E7,"q1":2.0200407837128814E7,"q3":2.020042242893076E7,"max":2.0200504E7,"sd":8.655728840148322,"avg":2.02004155071E7}}}',5,'int4','auto-list',NULL,3,0,'type/Integer',NULL,NULL,false,false,false,NULL,NULL),
	 (74,'2024-06-12 00:37:26.187311+02','2024-06-12 01:02:58.565324+02','date_day','type/Date','type/CreationDate',true,NULL,true,1,10,NULL,'Date Day','normal',NULL,'2024-06-12 00:37:28.461152+02',NULL,NULL,'{"global":{"distinct-count":6574,"nil%":0.0},"type":{"type/DateTime":{"earliest":"2013-01-01","latest":"2030-12-31"}}}',5,'date',NULL,NULL,1,0,'type/Date',NULL,NULL,false,false,false,NULL,NULL);
INSERT INTO collection (id,"name",description,archived,"location",personal_owner_id,slug,"namespace",authority_level,entity_id,created_at,"type") VALUES
	 (2,'Divvy',NULL,false,'/',NULL,'divvy',NULL,NULL,'q624FTvToFvdoo_LDqC1R','2024-06-12 01:05:44.315239+02',NULL);
INSERT INTO report_dashboard (id,created_at,updated_at,"name",description,creator_id,parameters,points_of_interest,caveats,show_in_getting_started,public_uuid,made_public_by_id,enable_embedding,embedding_params,archived,"position",collection_id,collection_position,cache_ttl,entity_id,auto_apply_filters,width,initially_published_at) VALUES
	 (1,'2024-06-12 01:05:58.826217+02','2024-06-17 14:11:24.401271+02','Divvy postgres',NULL,1,'[{"name":"Year","slug":"year","id":"3251aba3","type":"string/=","sectionId":"string"},{"name":"Month","slug":"month","id":"5fe50bd6","type":"string/=","sectionId":"string"}]',NULL,NULL,false,NULL,NULL,false,NULL,false,NULL,2,NULL,NULL,'NOrofcTbucTPssNzYKUxD',true,'fixed',NULL);
INSERT INTO report_card (id,created_at,updated_at,"name",description,display,dataset_query,visualization_settings,creator_id,database_id,table_id,query_type,archived,collection_id,public_uuid,made_public_by_id,enable_embedding,embedding_params,cache_ttl,result_metadata,collection_position,dataset,entity_id,parameters,parameter_mappings,collection_preview,metabase_version,"type",initially_published_at) VALUES
	 (1,'2024-06-12 02:20:38.981095+02','2024-06-17 13:18:05.130982+02','Number of rides over time',NULL,'line','{"database":2,"type":"query","query":{"source-table":11,"aggregation":[["count"]],"breakout":[["field",74,{"base-type":"type/Date","temporal-unit":"day","source-field":87}]],"joins":[{"fields":"all","alias":"Date - Started At Date Fk","condition":["=",["field",87,{"base-type":"type/Integer"}],["field",82,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]],"source-table":10}]}}','{"graph.dimensions":["date_day"],"graph.metrics":["count"],"graph.x_axis.title_text":"Date"}',1,2,11,'query',false,2,NULL,NULL,false,NULL,NULL,'[{"description":null,"semantic_type":"type/CreationDate","coercion_strategy":null,"unit":"day","name":"date_day","settings":null,"fk_target_field_id":null,"field_ref":["field",74,{"base-type":"type/Date","temporal-unit":"day","source-field":87}],"effective_type":"type/Date","id":74,"visibility_type":"normal","display_name":"Started At Date Fk → Date Day","fingerprint":{"global":{"distinct-count":6574,"nil%":0.0},"type":{"type/DateTime":{"earliest":"2013-01-01","latest":"2030-12-31"}}},"base_type":"type/Date"},{"display_name":"Count","semantic_type":"type/Quantity","field_ref":["aggregation",0],"name":"count","base_type":"type/BigInteger","effective_type":"type/BigInteger","fingerprint":{"global":{"distinct-count":59,"nil%":0.0},"type":{"type/Number":{"min":284.0,"q1":1250.25,"q3":3404.5,"max":7287.0,"sd":1411.344043373834,"avg":2482.3050847457625}}}}]',NULL,false,'7OxYna3w8H42gmJKE_j-d','[]','[]',true,'v0.49.3 (dba0992)','question',NULL),
	 (2,'2024-06-12 02:22:13.599077+02','2024-06-17 13:18:05.090082+02','Number of rides vs weekday',NULL,'bar','{"database":2,"type":"query","query":{"source-table":11,"aggregation":[["count"]],"breakout":[["field",76,{"base-type":"type/Text","source-field":87}],["field",75,{"base-type":"type/Integer","source-field":87}]],"order-by":[["asc",["field",75,{"base-type":"type/Integer","source-field":87}]]],"joins":[{"fields":"all","alias":"Date - Started At Date Fk","condition":["=",["field",87,{"base-type":"type/Integer"}],["field",82,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]],"source-table":10}]}}','{"graph.dimensions":["weekday_name"],"graph.metrics":["count"],"graph.x_axis.title_text":"Weekday Name"}',1,2,11,'query',false,2,NULL,NULL,false,NULL,NULL,'[{"description":null,"semantic_type":"type/Category","coercion_strategy":null,"name":"weekday_name","settings":null,"fk_target_field_id":null,"field_ref":["field",76,{"base-type":"type/Text","source-field":87}],"effective_type":"type/Text","id":76,"visibility_type":"normal","display_name":"Started At Date Fk → Weekday Name","fingerprint":{"global":{"distinct-count":7,"nil%":0.0},"type":{"type/Text":{"percent-json":0.0,"percent-url":0.0,"percent-email":0.0,"percent-state":0.0,"average-length":9.0}}},"base_type":"type/Text"},{"description":null,"semantic_type":"type/Category","coercion_strategy":null,"name":"weekday_iso","settings":null,"fk_target_field_id":null,"field_ref":["field",75,{"base-type":"type/Integer","source-field":87}],"effective_type":"type/Integer","id":75,"visibility_type":"normal","display_name":"Started At Date Fk → Weekday Iso","fingerprint":{"global":{"distinct-count":7,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":2.249501197259292,"q3":5.749733759318424,"max":7.0,"sd":2.0001521086057643,"avg":3.9996957712199572}}},"base_type":"type/Integer"},{"display_name":"Count","semantic_type":"type/Quantity","field_ref":["aggregation",0],"name":"count","base_type":"type/BigInteger","effective_type":"type/BigInteger","fingerprint":{"global":{"distinct-count":7,"nil%":0.0},"type":{"type/Number":{"min":17120.0,"q1":18156.25,"q3":23027.0,"max":26337.0,"sd":3258.740846517548,"avg":20922.285714285714}}}}]',NULL,false,'VSOZRtrYaFRIdWUO-LJ6L','[]','[]',true,'v0.49.3 (dba0992)','question',NULL),
	 (3,'2024-06-12 02:49:30.907402+02','2024-06-17 13:18:05.213211+02','Number of rides vs month',NULL,'bar','{"database":2,"type":"query","query":{"source-table":11,"aggregation":[["count"]],"breakout":[["field",84,{"base-type":"type/Text","source-field":87}],["field",78,{"base-type":"type/Integer","source-field":87}]],"order-by":[["asc",["field",78,{"base-type":"type/Integer","source-field":87}]]],"joins":[{"fields":"all","alias":"Date - Started At Date Fk","condition":["=",["field",87,{"base-type":"type/Integer"}],["field",82,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]],"source-table":10}]}}','{"graph.dimensions":["month_name"],"graph.series_order_dimension":null,"graph.series_order":null,"graph.metrics":["count"],"graph.x_axis.title_text":"Month"}',1,2,11,'query',false,2,NULL,NULL,false,NULL,NULL,'[{"description":null,"semantic_type":"type/Category","coercion_strategy":null,"name":"month_name","settings":null,"fk_target_field_id":null,"field_ref":["field",84,{"base-type":"type/Text","source-field":87}],"effective_type":"type/Text","id":84,"visibility_type":"normal","display_name":"Started At Date Fk → Month Name","fingerprint":{"global":{"distinct-count":12,"nil%":0.0},"type":{"type/Text":{"percent-json":0.0,"percent-url":0.0,"percent-email":0.0,"percent-state":0.0,"average-length":9.0}}},"base_type":"type/Text"},{"description":null,"semantic_type":"type/Category","coercion_strategy":null,"name":"month","settings":null,"fk_target_field_id":null,"field_ref":["field",78,{"base-type":"type/Integer","source-field":87}],"effective_type":"type/Integer","id":78,"visibility_type":"normal","display_name":"Started At Date Fk → Month","fingerprint":{"global":{"distinct-count":12,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":3.5396432500646267,"q3":9.518664598715468,"max":12.0,"sd":3.44887105741937,"avg":6.523273501673258}}},"base_type":"type/Integer"},{"display_name":"Count","semantic_type":"type/Quantity","field_ref":["aggregation",0],"name":"count","base_type":"type/BigInteger","effective_type":"type/BigInteger","fingerprint":{"global":{"distinct-count":2,"nil%":0.0},"type":{"type/Number":{"min":49622.0,"q1":49622.0,"q3":96834.0,"max":96834.0,"sd":33383.92535337928,"avg":73228.0}}}}]',NULL,false,'A3WaWWerXkGr-dz6eEJ16','[]','[]',true,'v0.49.3 (dba0992)','question',NULL),
	 (4,'2024-06-16 04:00:02.148221+02','2024-06-17 13:18:05.039565+02','Number of rides vs time of day',NULL,'row','{"database":2,"type":"query","query":{"source-table":11,"aggregation":[["count"]],"breakout":[["field",91,{"base-type":"type/Text","source-field":90}]],"order-by":[["desc",["aggregation",0]]]}}','{"graph.dimensions":["time_of_day_label"],"graph.metrics":["count"],"graph.x_axis.title_text":"Time Of Day"}',1,2,11,'query',false,2,NULL,NULL,false,NULL,NULL,'[{"description":null,"semantic_type":"type/Category","coercion_strategy":null,"name":"time_of_day_label","settings":null,"fk_target_field_id":null,"field_ref":["field",91,{"base-type":"type/Text","source-field":90}],"effective_type":"type/Text","id":91,"visibility_type":"normal","display_name":"Started At Time Of Day Fk → Time Of Day Label","fingerprint":{"global":{"distinct-count":4,"nil%":0.0},"type":{"type/Text":{"percent-json":0.0,"percent-url":0.0,"percent-email":0.0,"percent-state":0.0,"average-length":7.0}}},"base_type":"type/Text"},{"display_name":"Count","semantic_type":"type/Quantity","field_ref":["aggregation",0],"name":"count","base_type":"type/BigInteger","effective_type":"type/BigInteger","fingerprint":{"global":{"distinct-count":4,"nil%":0.0},"type":{"type/Number":{"min":4472.0,"q1":17222.0,"q3":56006.0,"max":71936.0,"sd":27909.696379573892,"avg":36614.0}}}}]',NULL,false,'XoXWrguaKxdhn-ocxA5eB','[]','[]',true,'v0.49.3 (dba0992)','question',NULL),
	 (6,'2024-06-16 22:38:08.468791+02','2024-06-17 13:18:10.119928+02','Number of rides by start location',NULL,'map','{"database":2,"type":"query","query":{"source-table":11,"aggregation":[["count"]],"breakout":[["field",95,{"base-type":"type/Float","binning":{"strategy":"bin-width","bin-width":0.01,"lib/type":"metabase.lib.binning/binning"}}],["field",96,{"base-type":"type/Float","binning":{"strategy":"bin-width","bin-width":0.01,"lib/type":"metabase.lib.binning/binning"}}]],"joins":[{"fields":"all","alias":"Date - Started At Date Fk","condition":["=",["field",87,{"base-type":"type/Integer"}],["field",82,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]],"source-table":10},{"fields":"all","alias":"Time Of Day - Started At Time Of Day Fk","condition":["=",["field",90,{"base-type":"type/Integer"}],["field",92,{"base-type":"type/Integer","join-alias":"Time Of Day - Started At Time Of Day Fk"}]],"source-table":12},{"fields":"all","alias":"Rideable Type - Rideable Type Fk","condition":["=",["field",85,{"base-type":"type/BigInteger"}],["field",72,{"base-type":"type/BigInteger","join-alias":"Rideable Type - Rideable Type Fk"}]],"source-table":9}],"filter":["inside",["field",95,{"base-type":"type/Float","binning":{"bin-width":0.01,"lib/type":"metabase.lib.binning/binning","min-value":41.68,"max-value":42.07,"num-bins":40,"strategy":"bin-width"}}],["field",96,{"base-type":"type/Float","binning":{"bin-width":0.01,"lib/type":"metabase.lib.binning/binning","min-value":-87.78,"max-value":-87.52,"num-bins":27,"strategy":"bin-width"}}],43.58536210604322,-90.11496814870681,40.613082032871965,-83.75315304155926]}}','{"map.type":"grid"}',1,2,11,'query',false,2,NULL,NULL,false,NULL,NULL,'[{"description":null,"semantic_type":"type/Latitude","coercion_strategy":null,"name":"start_lat","settings":null,"fk_target_field_id":null,"field_ref":["field",95,{"base-type":"type/Float","binning":{"strategy":"bin-width","bin-width":0.01,"lib/type":"metabase.lib.binning/binning","min-value":41.68,"max-value":42.07,"num-bins":40}}],"effective_type":"type/Float","id":95,"visibility_type":"normal","display_name":"Start Lat","fingerprint":{"global":{"distinct-count":3049,"nil%":0.0},"type":{"type/Number":{"min":41.68,"q1":41.88236476402309,"q3":41.93041340737823,"max":42.064854,"sd":0.046257671504609986,"avg":41.9027919484119}}},"base_type":"type/Float"},{"description":null,"semantic_type":"type/Longitude","coercion_strategy":null,"name":"start_lng","settings":null,"fk_target_field_id":null,"field_ref":["field",96,{"base-type":"type/Float","binning":{"strategy":"bin-width","bin-width":0.01,"lib/type":"metabase.lib.binning/binning","min-value":-87.78,"max-value":-87.52,"num-bins":27}}],"effective_type":"type/Float","id":96,"visibility_type":"normal","display_name":"Start Lng","fingerprint":{"global":{"distinct-count":3035,"nil%":0.0},"type":{"type/Number":{"min":-87.774446,"q1":-87.66053961201675,"q3":-87.62970772824151,"max":-87.52823173999786,"sd":0.026489383816151887,"avg":-87.64637279140966}}},"base_type":"type/Float"},{"display_name":"Count","semantic_type":"type/Quantity","field_ref":["aggregation",0],"name":"count","base_type":"type/BigInteger","effective_type":"type/BigInteger","fingerprint":{"global":{"distinct-count":197,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":8.451085995738092,"q3":280.45691424073175,"max":9408.0,"sd":952.2394652921429,"avg":375.5282051282051}}}}]',NULL,false,'777f0_WMfY-ES9wdqMIoi','[]','[]',true,'v0.49.3 (dba0992)','question',NULL),
	 (5,'2024-06-16 04:17:15.72854+02','2024-06-16 23:20:53.710917+02','Number of rides by starting position',NULL,'map','{"database":2,"type":"native","native":{"template-tags":{},"collection":"fct_rides","query":"SELECT\n  (\n    FLOOR(((\"dwh_core\".\"fct_rides\".\"start_lat\" - 41.6) / 0.01)) * 0.01\n  ) + 41.6 AS \"start_lat\",\n  (\n    FLOOR(((\"dwh_core\".\"fct_rides\".\"start_lng\" - -87.9) / 0.01)) * 0.01\n  ) + -87.9 AS \"start_lng\",\n  COUNT(*) AS \"count\"\nFROM\n  \"dwh_core\".\"fct_rides\"\nGROUP BY\n  (\n    FLOOR(((\"dwh_core\".\"fct_rides\".\"start_lat\" - 41.6) / 0.01)) * 0.01\n  ) + 41.6,\n  (\n    FLOOR(((\"dwh_core\".\"fct_rides\".\"start_lng\" - -87.9) / 0.01)) * 0.01\n  ) + -87.9\nORDER BY\n  (\n    FLOOR(((\"dwh_core\".\"fct_rides\".\"start_lat\" - 41.6) / 0.01)) * 0.01\n  ) + 41.6 ASC,\n  (\n    FLOOR(((\"dwh_core\".\"fct_rides\".\"start_lng\" - -87.9) / 0.01)) * 0.01\n  ) + -87.9 ASC"}}','{"map.type":"grid","table.cell_column":"start_lat","map.latitude_column":"start_lat","map.longitude_column":"start_lng","map.metric_column":"count"}',1,2,11,'native',true,2,NULL,NULL,false,NULL,NULL,'[{"display_name":"start_lat","field_ref":["field","start_lat",{"base-type":"type/Float"}],"name":"start_lat","base_type":"type/Float","effective_type":"type/Float","semantic_type":"type/Latitude","fingerprint":{"global":{"distinct-count":43,"nil%":0.0},"type":{"type/Number":{"min":41.63,"q1":41.754881154157154,"q3":41.925579506366375,"max":42.06,"sd":0.10283956337505144,"avg":41.844556650246304}}}},{"display_name":"start_lng","field_ref":["field","start_lng",{"base-type":"type/Float"}],"name":"start_lng","base_type":"type/Float","effective_type":"type/Float","semantic_type":"type/Longitude","fingerprint":{"global":{"distinct-count":26,"nil%":0.0},"type":{"type/Number":{"min":-87.78,"q1":-87.6969538708087,"q3":-87.62543315113129,"max":-87.53,"sd":0.05248935971502957,"avg":-87.66041871921183}}}},{"display_name":"count","field_ref":["field","count",{"base-type":"type/BigInteger"}],"name":"count","base_type":"type/BigInteger","effective_type":"type/BigInteger","semantic_type":"type/Quantity","fingerprint":{"global":{"distinct-count":196,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":8.209666878151092,"q3":230.47891822510283,"max":8973.0,"sd":932.1104140672802,"avg":360.72906403940885}}}}]',NULL,false,'9LmvtaOaJMhUIY8Owiu5c','[]','[]',true,'v0.49.3 (dba0992)','question',NULL),
	 (7,'2024-06-17 13:07:53.452838+02','2024-06-17 13:18:05.35001+02','Number of rides vs year',NULL,'bar','{"database":2,"type":"query","query":{"source-table":11,"joins":[{"alias":"Date - Started At Date Fk","condition":["=",["field",87,{"base-type":"type/Integer"}],["field",82,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]],"source-table":10},{"alias":"Rideable Type - Rideable Type Fk","condition":["=",["field",85,{"base-type":"type/BigInteger"}],["field",72,{"base-type":"type/BigInteger","join-alias":"Rideable Type - Rideable Type Fk"}]],"source-table":9},{"alias":"Time Of Day - Started At Time Of Day Fk","condition":["=",["field",90,{"base-type":"type/Integer"}],["field",92,{"base-type":"type/Integer","join-alias":"Time Of Day - Started At Time Of Day Fk"}]],"source-table":12}],"aggregation":[["count"]],"breakout":[["field",77,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk","binning":{"strategy":"default"}}]]}}','{"graph.x_axis.title_text":"Year","graph.x_axis.scale":"histogram","graph.dimensions":["year"],"graph.metrics":["count"]}',1,2,11,'query',false,2,NULL,NULL,false,NULL,NULL,'[{"description":null,"semantic_type":"type/Category","coercion_strategy":null,"name":"year","settings":null,"fk_target_field_id":null,"field_ref":["field",77,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk","binning":{"strategy":"num-bins","min-value":2012.5,"max-value":2030.0,"num-bins":8,"bin-width":2.5}}],"effective_type":"type/Decimal","id":77,"visibility_type":"normal","display_name":"Date - Started At Date Fk → Year","fingerprint":{"global":{"distinct-count":18,"nil%":0.0},"type":{"type/Number":{"min":2013.0,"q1":2017.0,"q3":2026.0,"max":2030.0,"sd":5.188131128689841,"avg":2021.5003042287801}}},"base_type":"type/Decimal"},{"display_name":"Count","semantic_type":"type/Quantity","field_ref":["aggregation",0],"name":"count","base_type":"type/BigInteger","effective_type":"type/BigInteger","fingerprint":{"global":{"distinct-count":1,"nil%":0.0},"type":{"type/Number":{"min":146456.0,"q1":146456.0,"q3":146456.0,"max":146456.0,"sd":null,"avg":146456.0}}}}]',NULL,false,'TfLJjsTr43vxv4Sk8Dloi','[]','[]',true,'v0.49.3 (dba0992)','question',NULL),
	 (8,'2024-06-17 13:18:00.721937+02','2024-06-17 13:19:36.793362+02','Number of rides by end location',NULL,'map','{"database":2,"type":"query","query":{"source-table":11,"joins":[{"alias":"Date - Started At Date Fk","condition":["=",["field",86,{"base-type":"type/Integer"}],["field",82,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]],"source-table":10},{"alias":"Time Of Day - Started At Time Of Day Fk","condition":["=",["field",89,{"base-type":"type/Integer"}],["field",92,{"base-type":"type/Integer","join-alias":"Time Of Day - Started At Time Of Day Fk"}]],"source-table":12},{"alias":"Rideable Type - Rideable Type Fk","condition":["=",["field",85,{"base-type":"type/BigInteger"}],["field",72,{"base-type":"type/BigInteger","join-alias":"Rideable Type - Rideable Type Fk"}]],"source-table":9}],"aggregation":[["count"]],"breakout":[["field",93,{"base-type":"type/Float","binning":{"strategy":"bin-width","bin-width":0.01,"lib/type":"metabase.lib.binning/binning"}}],["field",94,{"base-type":"type/Float","binning":{"strategy":"bin-width","bin-width":0.01,"lib/type":"metabase.lib.binning/binning"}}]],"filter":["inside",["field",93,{"base-type":"type/Float","binning":{"bin-width":0.01,"lib/type":"metabase.lib.binning/binning","min-value":41.800000000000004,"max-value":41.910000000000004,"num-bins":11,"strategy":"bin-width"}}],["field",94,{"base-type":"type/Float","binning":{"bin-width":0.01,"lib/type":"metabase.lib.binning/binning","min-value":-87.7,"max-value":-87.60000000000001,"num-bins":10,"strategy":"bin-width"}}],43.15970348298998,-90.17060180667498,40.4902715069448,-84.96630029617688]}}','{"map.type":"grid"}',1,2,11,'query',false,2,NULL,NULL,false,NULL,NULL,'[{"description":null,"semantic_type":"type/Latitude","coercion_strategy":null,"name":"end_lat","settings":null,"fk_target_field_id":null,"field_ref":["field",93,{"base-type":"type/Float","binning":{"strategy":"bin-width","bin-width":0.01,"lib/type":"metabase.lib.binning/binning","min-value":41.68,"max-value":42.07,"num-bins":40}}],"effective_type":"type/Float","id":93,"visibility_type":"normal","display_name":"End Lat","fingerprint":{"global":{"distinct-count":2878,"nil%":0.0013},"type":{"type/Number":{"min":41.68,"q1":41.88245904333142,"q3":41.93119777931498,"max":42.064854,"sd":0.046465881882911765,"avg":41.90304013708457}}},"base_type":"type/Float"},{"description":null,"semantic_type":"type/Longitude","coercion_strategy":null,"name":"end_lng","settings":null,"fk_target_field_id":null,"field_ref":["field",94,{"base-type":"type/Float","binning":{"strategy":"bin-width","bin-width":0.01,"lib/type":"metabase.lib.binning/binning","min-value":-87.78,"max-value":-87.53,"num-bins":25}}],"effective_type":"type/Float","id":94,"visibility_type":"normal","display_name":"End Lng","fingerprint":{"global":{"distinct-count":2871,"nil%":0.0013},"type":{"type/Number":{"min":-87.774446,"q1":-87.66136222166664,"q3":-87.62968824112457,"max":-87.53481388092041,"sd":0.02653074444593018,"avg":-87.64677038804705}}},"base_type":"type/Float"},{"display_name":"Count","semantic_type":"type/Quantity","field_ref":["aggregation",0],"name":"count","base_type":"type/BigInteger","effective_type":"type/BigInteger","fingerprint":{"global":{"distinct-count":194,"nil%":0.0},"type":{"type/Number":{"min":1.0,"q1":7.902658302878073,"q3":252.62198558662644,"max":9789.0,"sd":933.8079865028219,"avg":359.0638820638821}}}}]',NULL,false,'eEsaoiGoiTQ1TB95gqf12','[]','[]',true,'v0.49.3 (dba0992)','question',NULL);
INSERT INTO report_dashboardcard (id,created_at,updated_at,size_x,size_y,"row",col,card_id,dashboard_id,parameter_mappings,visualization_settings,entity_id,action_id,dashboard_tab_id) VALUES
	 (3,'2024-06-16 04:00:40.363463+02','2024-06-17 14:11:24.401271+02',12,6,11,12,4,1,'[{"parameter_id":"3251aba3","card_id":4,"target":["dimension",["field",77,{"base-type":"type/Integer","source-field":86}]]},{"parameter_id":"5fe50bd6","card_id":4,"target":["dimension",["field",84,{"base-type":"type/Text","source-field":86}]]}]','{}','jidTpjBEQ2d7rRGunFA71',NULL,1),
	 (7,'2024-06-17 13:08:30.002151+02','2024-06-17 14:11:24.401271+02',12,6,5,0,7,1,'[{"parameter_id":"3251aba3","card_id":7,"target":["dimension",["field",77,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]]},{"parameter_id":"5fe50bd6","card_id":7,"target":["dimension",["field",84,{"base-type":"type/Text","join-alias":"Date - Started At Date Fk"}]]}]','{}','VbDpa1zzziEhn8Obczekm',NULL,1),
	 (8,'2024-06-17 13:09:54.851391+02','2024-06-17 13:19:34.699507+02',12,14,0,0,6,1,'[{"parameter_id":"3251aba3","card_id":6,"target":["dimension",["field",77,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]]},{"parameter_id":"5fe50bd6","card_id":6,"target":["dimension",["field",84,{"base-type":"type/Text","join-alias":"Date - Started At Date Fk"}]]}]','{}','K-dr49uUZbQ3hvixzl0xj',NULL,2),
	 (9,'2024-06-17 13:19:34.699507+02','2024-06-17 13:19:34.699507+02',12,14,0,12,8,1,'[{"parameter_id":"3251aba3","card_id":8,"target":["dimension",["field",77,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]]},{"parameter_id":"5fe50bd6","card_id":8,"target":["dimension",["field",84,{"base-type":"type/Text","join-alias":"Date - Started At Date Fk"}]]}]','{}','yhPZlEFkJoVjwDTwmzTkK',NULL,2),
	 (1,'2024-06-12 02:20:46.786021+02','2024-06-17 14:10:37.822625+02',24,5,0,0,1,1,'[{"parameter_id":"3251aba3","card_id":1,"target":["dimension",["field",77,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]]},{"parameter_id":"5fe50bd6","card_id":1,"target":["dimension",["field",84,{"base-type":"type/Text","join-alias":"Date - Started At Date Fk"}]]}]','{}','La6nBIYhiEgNpDIjuK60G',NULL,1),
	 (2,'2024-06-12 02:22:20.755973+02','2024-06-17 14:11:24.401271+02',12,6,11,0,2,1,'[{"parameter_id":"3251aba3","card_id":2,"target":["dimension",["field",77,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]]},{"parameter_id":"5fe50bd6","card_id":2,"target":["dimension",["field",84,{"base-type":"type/Text","join-alias":"Date - Started At Date Fk"}]]}]','{}','znjCb2Mt_IXUL5xmGF_tD',NULL,1),
	 (4,'2024-06-12 03:10:27.241818+02','2024-06-17 14:11:24.401271+02',12,6,5,12,3,1,'[{"parameter_id":"3251aba3","card_id":3,"target":["dimension",["field",77,{"base-type":"type/Integer","join-alias":"Date - Started At Date Fk"}]]},{"parameter_id":"5fe50bd6","card_id":3,"target":["dimension",["field",84,{"base-type":"type/Text","join-alias":"Date - Started At Date Fk"}]]}]','{}','dTFKNKlyJI5C-7LwU9QWJ',NULL,1);
