INSERT INTO public.setting ("key",value) VALUES
	 ('setup-token','93173d39-276f-4c0f-bd35-75c072fa36ab'),
	 ('startup-time-millis','20078'),
	 ('redirect-all-requests-to-https','false'),
	 ('site-url','http://metabase.docker:3030'),
	 ('analytics-uuid','bbdb898e-1ba0-4444-ab75-0db8ca46a5e4'),
	 ('instance-creation','2024-05-24T10:03:10.137934Z'),
	 ('site-name','Example company'),
	 ('admin-email','admin@admin.com'),
	 ('site-locale','en'),
	 ('custom-homepage-dashboard','1'),
	 ('custom-homepage','true'),
	 ('anon-tracking-enabled','false')
	 ON CONFLICT ("key") DO NOTHING;
INSERT INTO public.setting ("key",value) VALUES
	 ('site-uuid','def982cd-391e-4192-a9a3-2913b53b9574'),
	 ('settings-last-updated','2024-05-24 10:05:29.132287+00')
	 ON CONFLICT ("key") DO NOTHING;
