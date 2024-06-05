INSERT INTO public.permissions_group_membership (id,user_id,group_id,is_group_manager) VALUES
	 (1,1,1,false),
	 (2,1,2,false)
	 ON CONFLICT ("id") DO NOTHING;
