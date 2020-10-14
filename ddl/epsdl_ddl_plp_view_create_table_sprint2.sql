create view [epsdlplp].[vw_fact_supply_items] as
select * from [epsdlplp].[fact_supply_items] 
where year(document_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1);


create view [epsdlplp].[vw_fact_supplier_invoicing] as
select * from [epsdlplp].[fact_supplier_invoicing]
where year(document_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1);


create view [epsdlplp].[vw_fact_requisitions_category] as
select * from [epsdlplp].[fact_requisitions_category]
where year(document_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1);