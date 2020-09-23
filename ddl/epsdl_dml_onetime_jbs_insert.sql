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


