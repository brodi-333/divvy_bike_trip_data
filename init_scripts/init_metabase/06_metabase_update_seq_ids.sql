SELECT setval('public.metabase_table_id_seq', (SELECT MAX(id) FROM metabase_table));
SELECT setval('public.metabase_field_id_seq', (SELECT MAX(id) FROM metabase_field));
SELECT setval('public.collection_id_seq', (SELECT MAX(id) FROM collection));
SELECT setval('public.report_dashboard_id_seq', (SELECT MAX(id) FROM report_dashboard));
SELECT setval('public.report_card_id_seq', (SELECT MAX(id) FROM report_card));
SELECT setval('public.dashboard_tab_id_seq', (SELECT MAX(id) FROM dashboard_tab));
SELECT setval('public.report_dashboardcard_id_seq', (SELECT MAX(id) FROM report_dashboardcard));
