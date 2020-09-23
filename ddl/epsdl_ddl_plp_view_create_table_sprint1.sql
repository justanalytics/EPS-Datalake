CREATE VIEW epsdlplp.vw_dim_gl_vessel
AS select * from epsdlplp.dim_gl_vessel vessel 
where 
(case when vessel.include_in_drc = 1 and (year(vessel.sold_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1) or vessel.sold_date is null)  
and vessel.fleet is not null then 1 else 0 end) = 1;


CREATE VIEW epsdlplp.vw_dim_gl_reporting_lines
AS select * from epsdlplp.dim_gl_reporting_lines where 
dim_gl_reporting_lines.acct_grouping_level4 = 'Operating Costs';


CREATE VIEW epsdlplp.vw_fact_dry_dock_details
AS SELECT fact.*
from epsdlplp.fact_dry_dock_details fact 
inner join epsdlplp.dim_gl_vessel vessel on fact.vessel_id = vessel.vessel_id
where 
(case when vessel.include_in_drc = 1 and (year(vessel.sold_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1) or vessel.sold_date is null)  and vessel.fleet is not null then 1 else 0 end) = 1;


CREATE VIEW epsdlplp.vw_fact_gl_budget
AS SELECT fact.*
from epsdlplp.fact_gl_budget fact 
inner join epsdlplp.dim_gl_vessel vessel on fact.vessel_id = vessel.vessel_id
inner join  epsdlplp.dim_gl_reporting_lines reporting_lines on fact.account_id = reporting_lines.account_id
where 
fact.year in (YEAR(GETDATE()),YEAR(GETDATE())-1)
and (case when vessel.include_in_drc = 1 and (year(vessel.sold_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1) or vessel.sold_date is null)  and vessel.fleet is not null then 1 else 0 end) = 1
and reporting_lines.acct_grouping_level4 = 'Operating Costs';


CREATE VIEW epsdlplp.vw_fact_gl_transactions
AS SELECT fact.*
from epsdlplp.fact_gl_transactions fact 
inner join epsdlplp.dim_gl_vessel vessel on fact.vessel_id = vessel.vessel_id
inner join  epsdlplp.dim_gl_reporting_lines reporting_lines on fact.account_id = reporting_lines.account_id
where 
year(journal_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1)
and (case when vessel.include_in_drc = 1 and (year(vessel.sold_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1) or vessel.sold_date is null)  and vessel.fleet is not null then 1 else 0 end) = 1
and reporting_lines.acct_grouping_level4 = 'Operating Costs'
and fact.delete_flag = 0;


CREATE VIEW epsdlplp.vw_fact_os_po
AS SELECT epsdlplp.fact_os_po.*
from epsdlplp.fact_os_po
inner join epsdlplp.dim_gl_vessel vessel on epsdlplp.fact_os_po.vessel_id = vessel.vessel_id
where 
year(document_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1)
and (case when vessel.include_in_drc = 1 and (year(vessel.sold_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1) or vessel.sold_date is null)  and vessel.fleet is not null then 1 else 0 end) = 1;


CREATE VIEW epsdlplp.vw_fact_ship_days
AS SELECT fact.*
from epsdlplp.fact_ship_days fact 
inner join epsdlplp.dim_gl_vessel vessel on fact.vessel_id = vessel.vessel_id
where 
year(fact.full_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1)
and (case when vessel.include_in_drc = 1 and (year(vessel.sold_date) in (YEAR(GETDATE()),YEAR(GETDATE())-1) or vessel.sold_date is null)  and vessel.fleet is not null then 1 else 0 end) = 1;
