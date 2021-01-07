insert into [dbo].[JBS_GUZZLE_FLOW] values('2','EPSDL_Batch','EPSDL_Job','ALL,ALL','"environment": "test","guzzle.stage.resume":"Y"','EPS_Batch_cluster','STG,FND,PLP');

insert into [dbo].[JBS_JOB] values ('TANKPAC.DEL_DEPARTMENTS','del_departments');
insert into [dbo].[JBS_JOB] values ('QCT.DOCUMENTS','qct_documents');
insert into [dbo].[JBS_JOB] values ('PENWOOD.DOCUMENTS','penwood_documents');
insert into [dbo].[JBS_JOB] values ('CUBIC.DOCUMENTS','cubic_documents');
insert into [dbo].[JBS_JOB] values ('TANKPAC.REQUISITIONS','requisitions');
insert into [dbo].[JBS_JOB] values ('TANKPAC.SUPPLY_ITEMS','supply_items');
insert into [dbo].[JBS_JOB] values ('NSLADMIN.ORDER_DETAILS','order_details');
insert into [dbo].[JBS_JOB] values ('BIUSER1.VW_VESSEL_DRY_DOCK_DETAILS','vessel_dry_dock_details');
insert into [dbo].[JBS_JOB] values ('DANAOS.EXPECTED_CALL_DA','expected_call_da');
insert into [dbo].[JBS_JOB] values ('TANKPAC.ITEM_LEDGERS','item_ledgers');
insert into [dbo].[JBS_JOB] values ('WFADMIN.VESSEL_TEAM_MAP','vessel_team_map');
insert into [dbo].[JBS_JOB] values ('DANAOS.DOCUMENTS','danaos_documents');


insert into [dbo].[JBS_JOB_v2] values ('select * from TANKPAC.DEL_DEPARTMENTS','del_departments');
insert into [dbo].[JBS_JOB_v2] values ('select * from qct.documents where extract(year from journal_date) in (extract(year from sysdate),extract(year from sysdate)-1)','qct_documents');
insert into [dbo].[JBS_JOB_v2] values ('select * from danaos.documents where extract(year from journal_date) in (extract(year from sysdate),extract(year from sysdate)-1)','danaos_documents');
insert into [dbo].[JBS_JOB_v2] values ('select * from penwood.documents where extract(year from journal_date) in (extract(year from sysdate),extract(year from sysdate)-1)','penwood_documents');
insert into [dbo].[JBS_JOB_v2] values ('select * from cubic.documents where extract(year from journal_date) in (extract(year from sysdate),extract(year from sysdate)-1)','cubic_documents');
insert into [dbo].[JBS_JOB_v2] values ('select * from tankpac.requisitions where extract(year from document_date) in (extract(year from sysdate),extract(year from sysdate)-1)','requisitions');
insert into [dbo].[JBS_JOB_v2] values ('select * from tankpac.supply_items where (ORDER_CODE,ORDER_SUPPLIER) in (select ORDER_CODE,ORDER_SUPPLIER from  tankpac.requisitions where extract(year from document_date) in (extract(year from sysdate),extract(year from sysdate)-1))','supply_items');
insert into [dbo].[JBS_JOB_v2] values ('select * from NSLADMIN.ORDER_DETAILS','order_details');
insert into [dbo].[JBS_JOB_v2] values ('select * from BIUSER1.VW_VESSEL_DRY_DOCK_DETAILS','vessel_dry_dock_details');
insert into [dbo].[JBS_JOB_v2] values ('select * from DANAOS.EXPECTED_CALL_DA','expected_call_da');
insert into [dbo].[JBS_JOB_v2] values ('select * from TANKPAC.ITEM_LEDGERS','item_ledgers');
insert into [dbo].[JBS_JOB_v2] values ('select * from WFADMIN.VESSEL_TEAM_MAP','vessel_team_map');

insert into [dbo].[JBS_JOB_EMAILS] values('1','Dev','agnit.chatterjee@justanalytics.com');

update [dbo].[JBS_JOB_v2] 
set tablename = 'select * from tankpac.requisitions where extract(year from document_date) in (extract(year from sysdate),extract(year from sysdate)-1,extract(year from sysdate)-2)'
where filename = ('requisitions');

update [dbo].[JBS_JOB_v2] 
set tablename = 'select * from tankpac.supply_items where (ORDER_CODE,ORDER_SUPPLIER) in (select ORDER_CODE,ORDER_SUPPLIER from  tankpac.requisitions where extract(year from document_date) in (extract(year from sysdate),extract(year from sysdate)-1,extract(year from sysdate)-2))'
where filename = ('supply_items');

---- For ETL Monitor
alter table [dbo].[job_info_ext]
alter column [message] varchar(max);


alter table [dbo].[job_info_param_ext]
alter column [parameter_value] varchar(max);


CREATE FUNCTION dReturnDate( @dFecha as datetime)
returns DATETIME
as
begin
DECLARE @D AS datetimeoffset
SET @D = CONVERT(datetimeoffset, @Dfecha) AT TIME ZONE 'Singapore Standard Time'
RETURN CONVERT(datetime, @D);
end

--create view [dbo].[v_job_info] as
--select * from [dbo].[job_info];

create view [dbo].[v_job_info_ext] as
select dbo.dReturnDate(business_date) as business_date
,batch_id,job_instance_id,system,location,parent_job_instance_id,name,module,tag
,dbo.dReturnDate(start_time) as start_time
,dbo.dReturnDate(end_time) as end_time
,status,message,raw_base_job_config,raw_job_config,processed_job_config,total_source_records
,total_processed_records,total_records,invalid_records,inserted,updated,deleted,soft_deleted,source_name
,attr1,attr2,attr3,attr4,attr5
from [dbo].[job_info_ext];