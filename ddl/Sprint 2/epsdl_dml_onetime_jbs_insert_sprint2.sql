-- insert into [dbo].[JBS_GUZZLE_FLOW] values('2','EPSDL_Batch','EPSDL_Job','ALL,ALL','"environment": "test","guzzle.stage.resume":"Y"','EPS_Batch_cluster','STG,FND,PLP');

insert into [dbo].[JBS_JOB] values ('TPMOFF.DOCUMENTS','tpmoff_documents');
insert into [dbo].[JBS_JOB] values ('EPS_CHARTER.DOCUMENTS','eps_charter_documents');
insert into [dbo].[JBS_JOB] values ('TANKPAC.SUPPLIER_INVOICING','supplier_invoicing');
insert into [dbo].[JBS_JOB] values ('NSLADMIN.DELIVERY_POINT','delivery_point');
insert into [dbo].[JBS_JOB] values ('NSLADMIN.SUPPLIER_REGISTRY','supplier_registry');
insert into [dbo].[JBS_JOB] values ('NSLADMIN.REQN_AUDIT_LOG','reqn_audit_log');
insert into [dbo].[JBS_JOB] values ('DANAOS.EXPECTED_CALL','Expected_call');
insert into [dbo].[JBS_JOB] values ('DANAOS.BP_PORTS','bp_ports');
insert into [dbo].[JBS_JOB] values ('DANAOS.TELEGRAMS','Telegrams');
insert into [dbo].[JBS_JOB] values ('DANAOS.TELEGRAMS_CUSTOM','telegrams_custom');
insert into [dbo].[JBS_JOB] values ('DANAOS.PORTS_LIBRARY','ports_library');

insert into [dbo].[JBS_JOB_v2] values ('select * from TPMOFF.DOCUMENTS where extract(year from journal_date) in (extract(year from sysdate),extract(year from sysdate)-1)','tpmoff_documents');
insert into [dbo].[JBS_JOB_v2] values ('select * from EPS_CHARTER.DOCUMENTS where extract(year from journal_date) in (extract(year from sysdate),extract(year from sysdate)-1)','eps_charter_documents');
insert into [dbo].[JBS_JOB_v2] values ('select * from TANKPAC.SUPPLIER_INVOICING','supplier_invoicing');
insert into [dbo].[JBS_JOB_v2] values ('select * from NSLADMIN.DELIVERY_POINT','delivery_point');
insert into [dbo].[JBS_JOB_v2] values ('select * from NSLADMIN.SUPPLIER_REGISTRY','supplier_registry');
insert into [dbo].[JBS_JOB_v2] values ('select * from NSLADMIN.REQN_AUDIT_LOG','reqn_audit_log');
insert into [dbo].[JBS_JOB_v2] values ('select * from danaos.expected_call','Expected_call');
insert into [dbo].[JBS_JOB_v2] values ('select * from danaos.bp_ports','bp_ports');
insert into [dbo].[JBS_JOB_v2] values ('select * from danaos.ports_library','ports_library');
insert into [dbo].[JBS_JOB_v2] values ('select * from danaos.telegrams','Telegrams');
insert into [dbo].[JBS_JOB_v2] values ('select * from danaos.telegrams_custom','telegrams_custom');

-- insert into [dbo].[JBS_JOB_EMAILS] values('1','Dev','agnit.chatterjee@justanalytics.com');

create table [dbo].[BD_refresh_job]
(
name varchar(1000),
workspaceid varchar(1000),
datasetid varchar(1000),
flag int
);

insert into [dbo].[BD_refresh_job] values
('Opex Monitor','2f2ce11d-59ad-4e92-96cc-82aaaab85444','d2f1d271-6cf1-4abb-b01f-8f983c2cccee',1)
('Trial Balance','2f2ce11d-59ad-4e92-96cc-82aaaab85444',	'647a5bfc-31d6-4f27-9f7c-5cd946f9bf28',	1)
('Port Calls','2f2ce11d-59ad-4e92-96cc-82aaaab85444',	'16a5b79d-342f-4963-b322-075143d67647',	1)
('Supply Log','2f2ce11d-59ad-4e92-96cc-82aaaab85444',	'1ec1ec43-28c7-4e1a-8cde-453ac909152a',	1)


