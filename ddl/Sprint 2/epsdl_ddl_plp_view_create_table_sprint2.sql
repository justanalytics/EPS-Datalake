create view [epsdlplp].[vw_fact_supply_items] as
select * from [epsdlplp].[fact_supply_items] 
where document_date >= DATEADD(year,-4,GETDATE());
GO

create view [epsdlplp].[vw_fact_supplier_invoicing] as
select * from [epsdlplp].[fact_supplier_invoicing]
where document_date >= DATEADD(year,-4,GETDATE());
GO

create view [epsdlplp].[vw_fact_requisitions_category] as
select * from [epsdlplp].[fact_requisitions_category]
where document_date >= DATEADD(year,-4,GETDATE());
GO

create view [epsdlplp].[vw_dim_requisitions] as
select * from [epsdlplp].[dim_requisitions]
where document_date >= DATEADD(year,-4,GETDATE());
GO

DROP VIEW [epsdlplp].[vw_fact_gl_transactions];
GO

CREATE VIEW [epsdlplp].[vw_fact_gl_transactions] AS SELECT fact.*
from [epsdlplp].[fact_gl_transactions] fact 
inner join epsdlplp.dim_gl_vessel vessel on fact.vessel_id = vessel.vessel_id
inner join  epsdlplp.dim_gl_reporting_lines reporting_lines on fact.account_id = reporting_lines.account_id
where 
year(journal_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1)
and (case when vessel.include_in_drc = 1 and (year(vessel.sold_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1) or vessel.sold_date is null)  and vessel.fleet is not null then 1 else 0 end) = 1
and reporting_lines.acct_grouping_level4 = 'Operating Costs'
and fact.FROM_TO NOT IN ('98110','96060')
and  fact.w_data_src_id in ('CUBIC', 'DANAOS', 'PENWOOD', 'QCT')
and fact.delete_flag = 0;
GO


CREATE VIEW [epsdlplp].[vw_dim_gl_vessel_port_calls]
AS select * from epsdlplp.dim_gl_vessel vessel 
where port_Calls_flag=1;
GO

CREATE VIEW [epsdlplp].[vw_dim_gl_vessel_supplier]
AS select * from epsdlplp.dim_gl_vessel vessel 
where vessel.supplier_flag =1;
GO