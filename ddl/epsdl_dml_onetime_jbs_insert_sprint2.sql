-- insert into [dbo].[JBS_GUZZLE_FLOW] values('2','EPSDL_Batch','EPSDL_Job','ALL,ALL','"environment": "test","guzzle.stage.resume":"Y"','EPS_Batch_cluster','STG,FND,PLP');


insert into [dbo].[JBS_JOB] values ('TANKPAC.SUPPLIER_INVOICING','supplier_invoicing');
insert into [dbo].[JBS_JOB] values ('NSLADMIN.DELIVERY_POINT','delivery_point');
insert into [dbo].[JBS_JOB] values ('NSLADMIN.SUPPLIER_REGISTRY','supplier_registry');
insert into [dbo].[JBS_JOB] values ('NSLADMIN.REQN_AUDIT_LOG','reqn_audit_log');

insert into [dbo].[JBS_JOB_v2] values ('select * from TANKPAC.SUPPLIER_INVOICING','supplier_invoicing');
insert into [dbo].[JBS_JOB_v2] values ('select * from NSLADMIN.DELIVERY_POINT','delivery_point');
insert into [dbo].[JBS_JOB_v2] values ('select * from NSLADMIN.SUPPLIER_REGISTRY','supplier_registry');
insert into [dbo].[JBS_JOB_v2] values ('select * from NSLADMIN.REQN_AUDIT_LOG','reqn_audit_log');


-- insert into [dbo].[JBS_JOB_EMAILS] values('1','Dev','agnit.chatterjee@justanalytics.com');


