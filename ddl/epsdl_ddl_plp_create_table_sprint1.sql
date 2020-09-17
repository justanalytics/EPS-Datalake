CREATE TABLE epsdlplp.dim_gl_account
(
 oracle_natural_account varchar(1000),
 ledger_card varchar(1000),
 parent1_code varchar(1000),
 parent1_description varchar(1000),
 parent2_code varchar(1000),
 parent2_description varchar(1000),
 parent3_code varchar(1000),
 parent3_description varchar(1000),
 parent4_code varchar(1000),
 parent4_description varchar(1000),
 parent5_code varchar(1000),
 parent5_description varchar(1000),
 financial_category varchar(1000),
 financial_sub_category varchar(1000),
 danaos_name varchar(1000),
 danaos_description_details varchar(1000),
 danaos_description_sub varchar(1000),
 danaos_description_main varchar(1000),
 source_system varchar(1000),
 integration_key varchar(1000),
 account_id varchar(1000),
 w_batch_id float ,
 business_date datetime ,
 w_data_src_id float ,
 w_refresh_ts datetime ,
 w_x_custom varchar(1000),
 w_job_instance_id int ,
 w_curr_rec_flg varchar(1000),
 w_location varchar(1000)
) ;


CREATE TABLE  epsdlplp.dim_gl_reporting_lines
(
 oracle_natural_account varchar(1000),
 account_group varchar(1000),
 acct_grouping_level4 varchar(1000),
 acct_grouping_level3 varchar(1000),
 acct_grouping_level2 varchar(1000),
 acct_grouping_level1 varchar(1000),
 ledger_card varchar(1000),
 danaos_name varchar(1000),
 source_system varchar(1000),
 integration_key varchar(1000),
 account_id varchar(1000),
 w_batch_id float ,
 business_date datetime ,
 w_data_src_id float ,
 w_refresh_ts datetime ,
 w_x_custom varchar(1000),
 w_job_instance_id int ,
 w_curr_rec_flg varchar(1000),
 w_location varchar(1000)
)  ;


CREATE TABLE epsdlplp.dim_gl_company
(
  child_value varchar(1000),
 child_description varchar(1000),
 parent1 varchar(1000),
 parent1_description varchar(1000),
 parent2 varchar(1000),
 parent2_description varchar(1000),
 parent3 varchar(1000),
 parent3_descriptin varchar(1000),
 parent4 varchar(1000),
 parent4_description varchar(1000),
 parent5 varchar(1000),
 parent5_description varchar(1000),
 parent6 varchar(1000),
 parent6_description varchar(1000),
 parent7 varchar(1000),
 parent7_description varchar(1000),
 parent8 varchar(1000),
 parent8_description varchar(1000),
 parent9 varchar(1000),
 parent9_description varchar(1000),
 le varchar(1000),
 danaos_co_code varchar(1000),
 "database" varchar(1000),
 company varchar(1000),
 short_name varchar(1000),
 "name" varchar(1000),
 managed_by varchar(1000),
 company_group varchar(1000),
 chart varchar(1000),
 company_type varchar(1000),
 base_currency varchar(1000),
 remarks varchar(1000),
 group_flag_1 varchar(1000),
 group_flag_2 varchar(1000),
 official_currency varchar(1000),
 global_vessel_id varchar(1000),
 create_intercompanies varchar(1000),
 is_filing varchar(1000),
 active_flag varchar(1000),
 company_level decimal(38,18),
 bank_ledger varchar(1000),
 group_details_from datetime,
 group_details_to datetime,
 tonnage_tax_from datetime,
 tonnage_tax_to datetime,
 vat_group_from datetime,
 vat_group_to datetime,
 incexp_managed_by varchar(1000),
 integration_key varchar(1000),
 company_id varchar(1000),
 w_batch_id float ,
 business_date datetime ,
 w_data_src_id float ,
 w_refresh_ts datetime ,
 w_x_custom varchar(1000),
 w_job_instance_id int ,
 w_curr_rec_flg varchar(1000),
 w_location varchar(1000)
);


CREATE TABLE epsdlplp.dim_gl_vessel
(
 addl_attribute1 varchar(1000) ,
 addl_attribute2 varchar(1000) ,
 addl_attribute3 varchar(1000) ,
 built decimal(38,18) ,
 company_structure_in_danaos varchar(1000) ,
 date_built datetime ,
 dwt decimal(38,18) ,
 eps_ownership varchar(1000) ,
 eps_uk_ownership varchar(1000) ,
 fleet_type varchar(1000) ,
 fleet_type_code varchar(1000) ,
 fleet_type_sort varchar(1000) ,
 fleet_type_sub_code varchar(1000) ,
 fleet_type_sub varchar(1000) ,
 fleet_code varchar(1000) ,
 fleet varchar(1000) ,
 owning_entity varchar(1000) ,
 owning_entity_codes varchar(1000) ,
 ownership varchar(1000) ,
 vessel_type varchar(1000) ,
 vessel_group varchar(1000) ,
 built_year varchar(1000) ,
 vessel_class varchar(1000) ,
 journal_end_date datetime ,
 journal_start_date datetime ,
 last_updated_by varchar(1000) ,
 last_updated_date datetime ,
 lwt decimal(38,18) ,
 managed_by_eps varchar(1000) ,
 ownership_type varchar(1000) ,
 period varchar(1000) ,
 qct_ownership varchar(1000) ,
 qct_start_date datetime ,
 qps_ownership varchar(1000) ,
 sold_date datetime ,
 start_date datetime ,
 useful_life decimal(38,18) ,
 vessel_code varchar(1000) ,
 vessel_name varchar(1000) ,
 vessel_ownership varchar(1000),
 region varchar(1000),
 integration_key varchar(1000),
 vessel_id varchar(1000),
 include_in_drc int,
 w_batch_id float ,
 business_date datetime ,
 w_data_src_id float ,
 w_refresh_ts datetime ,
 w_x_custom varchar(1000),
 w_job_instance_id int ,
 w_curr_rec_flg varchar(1000),
 w_location varchar(1000)
) ;


create table epsdlplp.dim_gl_service 
(
 service_code varchar(1000),
 service_description varchar(1000),
 parent1_code varchar(1000),
 parent1_description varchar(1000),
 parent2_code varchar(1000),
 parent2_description varchar(1000),
 parent3_code varchar(1000),
 parent3_description varchar(1000),
 parent4_code varchar(1000),
 parent4_description varchar(1000),
 parent5_code varchar(1000),
 parent5_description varchar(1000),
 parent6_code varchar(1000),
 parent6_description varchar(1000),
 parent7_code varchar(1000),
 parent7_description varchar(1000),
 parent8_code varchar(1000),
 parent8_description varchar(1000),
 parent9_code varchar(1000),
 parent9_description varchar(1000),
 integration_key varchar(1000),
 service_id varchar(1000),
 w_batch_id float ,
 business_date datetime ,
 w_data_src_id float ,
 w_refresh_ts datetime ,
 w_x_custom varchar(1000),
 w_job_instance_id int ,
 w_curr_rec_flg varchar(1000),
 w_location varchar(1000)
) ;


CREATE TABLE epsdlplp.dim_gl_department 
( 
child_value varchar(1000), 
description varchar(1000), 
department varchar(1000), 
department_description varchar(1000), 
parent2 varchar(1000), 
parent2_description varchar(1000), 
parent3 varchar(1000), 
parent3_description varchar(1000), 
parent4 varchar(1000), 
parent4_description varchar(1000), 
parent5 varchar(1000), 
parent5_description varchar(1000), 
parent6 varchar(1000), 
parent6_description varchar(1000), 
parent7 varchar(1000), 
parent7_description varchar(1000), 
parent8 varchar(1000), 
parent8_description varchar(1000), 
parent9 varchar(1000), 
parent9_description varchar(1000), 
integration_key varchar(1000),
department_id varchar(1000),
w_batch_id float ,
business_date datetime ,
w_data_src_id float ,
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
) ;


CREATE TABLE epsdlplp.dim_data_security 
( 
user_email varchar(1000), 
company_codes varchar(1000), 
vessel_codes varchar(1000),
integration_key varchar(1000),
w_batch_id float ,
business_date datetime ,
w_data_src_id float ,
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
)
;


CREATE TABLE epsdlplp.fact_gl_transactions
(
 accrual_type varchar(1000),
 accrued_by_user varchar(1000),
 accrued_by_user_2 varchar(1000),
 accrued_on_date datetime,
 allocation_date_from datetime,
 allocation_date_to datetime,
 amount decimal(38,18),
 application_code varchar(1000),
 application_ref varchar(1000),
 approval_level varchar(1000),
 approved_by varchar(1000),
 ar_type varchar(1000),
 bank varchar(1000),
 book_credit_off decimal(38,18),
 book_debit_off decimal(38,18),
 book_value decimal(38,18),
 book_value_off decimal(38,18),
 book_value2 decimal(38,18),
 book_value3 decimal(38,18),
 budget varchar(1000),
 bunker_price decimal(38,18),
 bunker_qty decimal(38,18),
 created_by_user varchar(1000),
 created_by_user_2 varchar(1000),
 currency varchar(1000),
 currency3 varchar(1000),
 db_userid varchar(1000),
 debit_credit varchar(1000),
 document_category varchar(1000),
 document_date datetime,
 document_status varchar(1000),
 document_subject varchar(1000),
 document_subsubject varchar(1000),
 document_type varchar(1000),
 due_date datetime,
 entry_number decimal(38,18),
 entry_rate decimal(38,18),
 entry_rate2 decimal(38,18),
 entry_rate3 decimal(38,18),
 filed_to varchar(1000),
 filed_to3 varchar(1000),
 finalized_by_user varchar(1000),
 finalized_by_user_2 varchar(1000),
 flag1 varchar(1000),
 flag2 varchar(1000),
 flag3 varchar(1000),
 from_to varchar(1000),
 fx_rate decimal(38,18),
 import_status varchar(1000),
 imported_by varchar(1000),
 inc_exp_category varchar(1000),
 inc_exp_group varchar(1000),
 instrument_no varchar(1000),
 issue_date datetime,
 job_number varchar(1000),
 journal_company varchar(1000),
 journal_date datetime,
 journal_line decimal(38,18),
 journal_number varchar(1000),
 journal_posting datetime,
 journal_series varchar(1000),
 journal_status varchar(1000),
 journal_user varchar(1000),
 journal_user_2 varchar(1000),
 last_updated datetime,
 matching_company varchar(1000),
 matching_line decimal(38,18),
 matching_number varchar(1000),
 matching_series varchar(1000),
 mc_reference varchar(1000),
 "name" varchar(1000),
 open_item_status varchar(1000),
 operation_code1 varchar(1000),
 operation_code2 varchar(1000),
 operation_id1 varchar(1000),
 operation_id2 varchar(1000),
 operation_subid_1 varchar(1000),
 operation_subid_2 varchar(1000),
 order_number varchar(1000),
 our_company varchar(1000),
 pay_approval_level decimal(38,18),
 pay_flag varchar(1000),
 pay_selected varchar(1000),
 payment_method varchar(1000),
 place varchar(1000),
 prt_flag varchar(1000),
 remarks varchar(1000),
 reporting_amount decimal(38,18),
 serial_no varchar(1000),
 set_currency_amount decimal(38,18),
 spot_rate_flag varchar(1000),
 sup_match varchar(1000),
 supplier_code varchar(1000),
 team varchar(1000),
 tot_book_credit decimal(38,18),
 tot_book_credit2 decimal(38,18),
 tot_book_credit3 decimal(38,18),
 tot_book_debit decimal(38,18),
 tot_book_debit2 decimal(38,18),
 tot_book_debit3 decimal(38,18),
 tot_local_credit decimal(38,18),
 tot_local_debit decimal(38,18),
 transaction_type varchar(1000),
 vat_amount decimal(38,18),
 vat_category varchar(1000),
 vat_number varchar(1000),
 vessel_code varchar(1000),
 withholding_tax_amount decimal(38,18),
 withholding_tax_code varchar(1000),
 journal_narrative varchar(1000),
 journal_reference varchar(1000),
 flag4 varchar(1000),
 submission_date datetime,
 value_date datetime,
 transaction_cost varchar(1000),
 accrual_flag decimal(38,18),
 order_code varchar(1000),
 document_code varchar(1000),
 internal_ref varchar(1000),
 row_num int,
 account_id varchar(1000),
 company_id varchar(1000),
 vessel_id varchar(1000),
 service_id varchar(1000),
 department_id varchar(1000),
 intercompany_id varchar(1000),
 future1_id varchar(1000),
 future2_id varchar(1000),
 code_combination_id varchar(1000),
 journal_id varchar(1000),
 tot_global_credit decimal(38,18),
 tot_global_debit decimal(38,18),
 delete_flag int,
 integration_key varchar(1000),
 w_x_custom varchar(1000),
 w_job_instance_id int ,
 w_refresh_ts datetime ,
 w_curr_rec_flg varchar(1000),
 w_data_src_id float,
 w_location varchar(1000) ,
 w_batch_id float ,
 business_date datetime) ;


CREATE TABLE epsdlplp.fact_gl_budget
(
 vessel_code varchar(1000),
 matching_date datetime,
 ledger_card varchar(1000),
 tot_book_debit decimal(38,18),
 tot_book_credit decimal(38,18),
 "year" int,
 vessel_id varchar(1000),
 company_id varchar(1000),
 account_id varchar(1000),
 reporting_lines_id varchar(1000),
 integration_key varchar(1000),
 w_x_custom varchar(1000),
 w_job_instance_id int ,
 w_refresh_ts datetime ,
 w_curr_rec_flg varchar(1000),
 w_data_src_id float,
 w_location varchar(1000) ,
 w_batch_id float ,
 business_date datetime
) ;


CREATE TABLE epsdlplp.fact_dry_dock_details
(
 vessel_code varchar(1000) ,
 vessel_id varchar(1000) ,
 dd_days datetime ,
 dt_actual_entry datetime ,
 dt_actual_exit datetime ,
 dt_planned_entry datetime ,
 dt_planned_exit datetime,
 matching_date datetime,
 w_batch_id float ,
 business_date datetime ,
 w_data_src_id float ,
 w_refresh_ts datetime ,
 w_x_custom varchar(1000),
 w_job_instance_id int ,
 w_curr_rec_flg varchar(1000),
 w_location varchar(1000),
 integration_key varchar(1000)
)
;


CREATE TABLE epsdlplp.fact_ship_days
(
 vessel_code varchar(1000) ,
 vessel_id varchar(1000) ,
 full_date datetime ,
 "start_date" datetime ,
 sold_date datetime ,
 ship_days int ,
 w_batch_id float ,
 business_date datetime ,
 w_data_src_id float ,
 w_refresh_ts datetime ,
 w_x_custom varchar(1000),
 w_job_instance_id int ,
 w_curr_rec_flg varchar(1000),
 w_location varchar(1000),
 integration_key varchar(1000)
)
;


CREATE TABLE epsdlplp.fact_os_po
(
 parcial decimal(38,18),
 order_qty decimal(38,18),
 invoice_qty decimal(38,18), 
 order_price decimal(38,18),
 order_rate decimal(38,18),
 order_discount decimal(38,18),
 invoice_price decimal(38,18),
 invoice_rate decimal(38,18),
 invoice_discount decimal(38,18),
 acc_code varchar(1000),
 acrl_code varchar(1000),
 comments varchar(1000),
 document_date datetime,
 order_currency varchar(1000),
 order_code varchar(1000),
 accounts_team varchar(1000),
 business_team varchar(1000),
 vessel_code varchar(1000), 
 vessel_id varchar(1000),
 vessel_name varchar(1000),
 department varchar(1000),
 item_system_code varchar(1000),
 item_subsystem_code varchar(1000),
 ledger_card varchar(1000),
 order_supplier varchar(1000),
 order_date datetime,
 disputed_date datetime,
 disputed_comments varchar(1000),
 approver varchar(1000),
 requested_qty decimal(38,18),
 approved_qty decimal(38,18),
 item_serial_no decimal(38,18),
 item_ref_code varchar(1000),
 delivery_date datetime,
 vessel_code1 varchar(1000), 
 vessel_name1 varchar(1000),
 dd_po_flag varchar(1000),
 dd_po_flag_cy varchar(1000),
 approver_po_flag varchar(1000),
 account_id varchar(1000), 
 item_amount_po_usd decimal(38,18),
 document_code varchar(1000),
 line_type varchar(1000),
 vessel_current_year_flag varchar(1000),
 order_code_line_type varchar(1000),
 w_data_src_id varchar(1000) ,
 w_job_instance_id int ,
 w_curr_rec_flg varchar(1000),
 w_x_custom varchar(1000),
 w_refresh_ts datetime ,
 w_location varchar(1000) ,
 w_batch_id float ,
 business_date datetime
) ;





CREATE TABLE  epsdlplp.rej_sri_account
(
 oracle_natural_account varchar(1000),
 "description" varchar(1000),
 parent1_code varchar(1000),
 parent1_description varchar(1000),
 parent2_code varchar(1000),
 parent2_description varchar(1000),
 parent3_code varchar(1000),
 parent3_description varchar(1000),
 parent4_code varchar(1000),
 parent4_description varchar(1000),
 parent5_code varchar(1000),
 parent5_description varchar(1000),
 financial_category varchar(1000),
 financial_sub_category varchar(1000),
 danaos_name varchar(1000),
 danaos_description_details varchar(1000),
 danaos_description_sub varchar(1000),
 danaos_description_main varchar(1000),
 integration_key varchar(1000),
 validation_error varchar(1000),
 w_source_system varchar(1000),
 w_src_file_name varchar(1000),
 w_refresh_ts datetime,
 w_job_instance_id varchar(1000),
 w_business_dt datetime,
 w_location varchar(1000),
 w_batch_id int
) ;


CREATE TABLE  epsdlplp.rej_sri_account_mapping
(
 oracle_natural_account varchar(1000),
 ledger_card varchar(1000),
 source_system varchar(1000),
 integration_key varchar(1000),
 validation_error varchar(1000),
 w_source_system varchar(1000),
 w_src_file_name varchar(1000),
 w_refresh_ts datetime,
 w_job_instance_id varchar(1000),
 w_business_dt datetime,
 w_location varchar(1000),
 w_batch_id int
) ; 


CREATE TABLE  epsdlplp.rej_sri_reporting_lines
(
 oracle_natural_account varchar(1000),
 account_group varchar(1000),
 acct_grouping_level4 varchar(1000),
 acct_grouping_level3 varchar(1000),
 acct_grouping_level2 varchar(1000),
 acct_grouping_level1 varchar(1000),
 ledger_card varchar(1000),
 integration_key varchar(1000),
 validation_error varchar(1000),
 w_source_system varchar(1000),
 w_src_file_name varchar(1000),
 w_refresh_ts datetime,
 w_job_instance_id varchar(1000),
 w_business_dt datetime,
 w_location varchar(1000),
 w_batch_id int
) ;


CREATE TABLE   epsdlplp.rej_sri_company_hierarchy
(
 child_value varchar(1000),
 child_description varchar(1000),
 parent1 varchar(1000),
 parent1_description varchar(1000),
 parent2 varchar(1000),
 parent2_description varchar(1000),
 parent3 varchar(1000),
 parent3_descriptin varchar(1000),
 parent4 varchar(1000),
 parent4_description varchar(1000),
 parent5 varchar(1000),
 parent5_description varchar(1000),
 parent6 varchar(1000),
 parent6_description varchar(1000),
 parent7 varchar(1000),
 parent7_description varchar(1000),
 parent8 varchar(1000),
 parent8_description varchar(1000),
 parent9 varchar(1000),
 parent9_description varchar(1000),
 le varchar(1000),
 danaos_co_code varchar(1000),
 "database" varchar(1000),
 integration_key varchar(1000),
 validation_error varchar(1000),
 w_source_system varchar(1000),
 w_src_file_name varchar(1000),
 w_refresh_ts datetime,
 w_job_instance_id varchar(1000),
 w_business_dt datetime,
 w_location varchar(1000),
 w_batch_id int
) ;


CREATE TABLE  epsdlplp.rej_sri_company_master
(
 child_value varchar(1000),
 danaos_co_code varchar(1000),
 "database" varchar(1000),
 company varchar(1000),
 short_name varchar(1000),
 "name" varchar(1000),
 managed_by varchar(1000),
 company_group varchar(1000),
 chart varchar(1000),
 company_type varchar(1000),
 base_currency varchar(1000),
 remarks varchar(1000),
 group_flag_1 varchar(1000),
 group_flag_2 varchar(1000),
 official_currency varchar(1000),
 global_vessel_id varchar(1000),
 create_intercompanies varchar(1000),
 is_filing varchar(1000),
 active_flag varchar(1000),
 company_level decimal(38,18),
 bank_ledger varchar(1000),
 group_details_from datetime,
 group_details_to datetime,
 tonnage_tax_from datetime,
 tonnage_tax_to datetime,
 vat_group_from datetime,
 vat_group_to datetime,
 incexp_managed_by varchar(1000),
 integration_key varchar(1000),
 validation_error varchar(1000),
 w_source_system varchar(1000),
 w_src_file_name varchar(1000),
 w_refresh_ts datetime,
 w_job_instance_id varchar(1000),
 w_business_dt datetime,
 w_location varchar(1000),
 w_batch_id int
) ;


CREATE TABLE  epsdlplp.rej_sri_vessel_hierarchy
(
 vessel_code varchar(1000),
 vessel_name varchar(1000),
 fleet_type_sub_code varchar(1000),
 fleet_type_sub varchar(1000),
 fleet_type_code varchar(1000),
 fleet_type varchar(1000),
 fleet_code varchar(1000),
 fleet varchar(1000),
 integration_key varchar(1000),
 validation_error varchar(1000),
 w_source_system varchar(1000),
 w_src_file_name varchar(1000),
 w_refresh_ts datetime,
 w_job_instance_id varchar(1000),
 w_business_dt datetime,
 w_location varchar(1000),
 w_batch_id int
 ) ;


CREATE TABLE  epsdlplp.rej_sri_vessel_master
(
 vessel_code varchar(1000),
 owning_entity varchar(1000),
 owning_entity_codes varchar(1000),
 "ownership" varchar(1000),
 vessel_type varchar(1000),
 vessel_group varchar(1000),
 dwt decimal(28,10),
 built_year decimal(28,10),
 sold_date datetime,
 vessel_class varchar(1000),
 "period" varchar(1000),
 company_structure_in_danaos varchar(1000),
 qps_ownership varchar(1000),
 qct_ownership varchar(1000),
 managed_by_eps varchar(1000),
 ownership_type varchar(1000),
 built decimal(28,10),
 date_built datetime,
 useful_life decimal(28,10),
 lwt decimal(28,10),
 "start_date" datetime,
 journal_start_date datetime,
 journal_end_date datetime,
 qct_start_date datetime,
 addl_attribute1 varchar(1000),
 addl_attribute2 varchar(1000),
 addl_attribute3 varchar(1000),
 last_updated_date datetime,
 last_updated_by varchar(1000),
 eps_ownership varchar(1000),
 eps_uk_ownership varchar(1000),
 fleet_type_sort varchar(1000),
 vessel_ownership varchar(1000),
 region varchar(1000),
 integration_key varchar(1000),
 validation_error varchar(1000),
 w_source_system varchar(1000),
 w_src_file_name varchar(1000),
 w_refresh_ts datetime,
 w_job_instance_id varchar(1000),
 w_business_dt datetime,
 w_location varchar(1000),
 w_batch_id int
) ;


CREATE TABLE  epsdlplp.rej_sri_service_hierarchy
(
 service_code varchar(1000),
 service_description varchar(1000),
 parent1_code varchar(1000),
 parent1_description varchar(1000),
 parent2_code varchar(1000),
 parent2_description varchar(1000),
 parent3_code varchar(1000),
 parent3_description varchar(1000),
 parent4_code varchar(1000),
 parent4_description varchar(1000),
 parent5_code varchar(1000),
 parent5_description varchar(1000),
 parent6_code varchar(1000),
 parent6_description varchar(1000),
 parent7_code varchar(1000),
 parent7_description varchar(1000),
 parent8_code varchar(1000),
 parent8_description varchar(1000),
 parent9_code varchar(1000),
 parent9_description varchar(1000),
 integration_key varchar(1000),
 validation_error varchar(1000),
 w_source_system varchar(1000),
 w_src_file_name varchar(1000),
 w_refresh_ts datetime,
 w_job_instance_id varchar(1000),
 w_business_dt datetime,
 w_location varchar(1000),
 w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_documents 
( 
document_date datetime,
document_type varchar(1000),
our_company varchar(1000),
from_to varchar(1000),
serial_no varchar(1000),
issue_date datetime,
place varchar(1000),
narrative varchar(1000),
"name" varchar(1000),
due_date datetime,
currency varchar(1000),
amount decimal(38,18),
book_value decimal(38,18),
vat_amount decimal(38,18),
vat_category varchar(1000),
vat_number varchar(1000),
inc_exp_category varchar(1000),
inc_exp_group varchar(1000),
document_subject varchar(1000),
document_subsubject varchar(1000),
document_category varchar(1000),
transaction_type varchar(1000),
journal_company varchar(1000),
journal_series varchar(1000),
journal_number varchar(1000),
journal_line decimal(38,18),
journal_date datetime,
journal_status varchar(1000),
journal_user varchar(1000),
journal_posting datetime,
accrued_on_date datetime,
accrued_by_user varchar(1000),
document_status varchar(1000),
created_by_user varchar(1000),
finalized_by_user varchar(1000),
filed_to varchar(1000),
bank varchar(1000),
budget varchar(1000),
open_item_status varchar(1000),
matching_company varchar(1000),
matching_series varchar(1000),
matching_number varchar(1000),
matching_line decimal(38,18),
debit_credit varchar(1000),
remarks varchar(1000),
operation_code1 varchar(1000),
operation_id1 varchar(1000),
operation_code2 varchar(1000),
operation_id2 varchar(1000),
allocation_date_from datetime,
allocation_date_to datetime,
entry_number decimal(38,18),
tot_local_debit decimal(38,18),
tot_local_credit decimal(38,18),
tot_book_debit decimal(38,18),
tot_book_credit decimal(38,18),
flag1 varchar(1000),
flag2 varchar(1000),
reporting_amount decimal(38,18),
set_currency_amount decimal(38,18),
approval_level varchar(1000),
book_value_off decimal(38,18),
book_debit_off decimal(38,18),
book_credit_off decimal(38,18),
pay_flag varchar(1000),
prt_flag varchar(1000),
accrual_type varchar(1000),
entry_rate decimal(38,18),
bunker_qty decimal(38,18),
bunker_price decimal(38,18),
application_code varchar(1000),
application_ref varchar(1000),
operation_subid_1 varchar(1000),
operation_subid_2 varchar(1000),
entry_rate2 decimal(38,18),
book_value2 decimal(38,18),
tot_book_debit2 decimal(38,18),
tot_book_credit2 decimal(38,18),
currency3 varchar(1000),
entry_rate3 decimal(38,18),
book_value3 decimal(38,18),
tot_book_debit3 decimal(38,18),
tot_book_credit3 decimal(38,18),
team varchar(1000),
job_number varchar(1000),
vessel_code varchar(1000),
ar_type varchar(1000),
approved_by varchar(1000),
import_status varchar(1000),
imported_by varchar(1000),
sup_match varchar(1000),
journal_user_2 varchar(1000),
accrued_by_user_2 varchar(1000),
created_by_user_2 varchar(1000),
finalized_by_user_2 varchar(1000),
flag3 varchar(1000),
order_number varchar(1000),
supplier_code varchar(1000),
last_updated datetime,
db_userid varchar(1000),
fx_rate decimal(38,18),
mc_reference varchar(1000),
spot_rate_flag varchar(1000),
filed_to3 varchar(1000),
pay_approval_level decimal(38,18),
pay_selected varchar(1000),
payment_method varchar(1000),
withholding_tax_amount decimal(38,18),
instrument_no varchar(1000),
withholding_tax_code varchar(1000),
flag4 varchar(1000),
submission_date datetime,
value_date datetime,
transaction_cost varchar(1000),
accrual_flag decimal(38,18),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_requisitions 
( 
vessel_code varchar(1000),
department varchar(1000),
document_code varchar(1000),
document_no decimal(38,18),
document_date datetime,
requisition_code varchar(1000),
quotation_code varchar(1000),
order_code varchar(1000),
delivery_code varchar(1000),
invoice_no varchar(1000),
delivery_date datetime,
ships_requisition_no varchar(1000),
requisition_port varchar(1000),
order_port varchar(1000),
delivery_port varchar(1000),
order_due_date datetime,
requisition_eta datetime,
requisition_etd datetime,
voyage_id varchar(1000),
voyage_number varchar(1000),
protected decimal(38,18),
quotation_supplier varchar(1000),
total_items decimal(38,18),
line_type varchar(1000),
order_supplier varchar(1000),
order_agent varchar(1000),
comments varchar(1000),
entry_unit_type varchar(1000),
"user" varchar(1000),
approver varchar(1000),
verifier varchar(1000),
currency varchar(1000),
reference varchar(1000),
additional_items decimal(38,18),
additional_price decimal(38,18),
journal_reference varchar(1000),
tarriff_agreed varchar(1000),
part_deliveries varchar(1000),
user_1 varchar(1000),
user_2 varchar(1000),
user_3 varchar(1000),
user_4 varchar(1000),
tariff_agreed varchar(1000),
extra_comments varchar(1000),
total_add_expenses decimal(38,18),
dispatch_vessel_code varchar(1000),
dispatch_department_code varchar(1000),
dispatch_line varchar(1000),
requisition_raised_date datetime,
dn_code varchar(1000),
urgency_code varchar(1000),
invoice_supplier varchar(1000),
supplier_location varchar(1000),
period_required decimal(38,18),
terms varchar(1000),
approver2 varchar(1000),
payment_terms varchar(1000),
tariff_agreed_date datetime,
commercial_contract varchar(1000),
commercial_contract_date datetime,
supplier_reminder varchar(1000),
disputed_flag varchar(1000),
budget_code varchar(1000),
sent_to varchar(1000),
warehouse_code varchar(1000),
warehouse_supplier varchar(1000),
delivery_to varchar(1000),
maintenance_link varchar(1000),
user_5 varchar(1000),
issued_by varchar(1000),
prepare_direct varchar(1000),
disputed_date datetime,
approved_flag varchar(1000),
approved_date datetime,
sent_for_approval varchar(1000),
sent_for_approval_date datetime,
disputed_comments varchar(1000),
approved_comments varchar(1000),
buyer_comments varchar(1000),
supplier_name varchar(1000),
accounting_flag decimal(38,18),
created_by_vessel varchar(1000),
delivery_confirmation_date datetime,
acc_category_code varchar(1000),
document_source varchar(1000),
delivery_confirmation varchar(1000),
vendor_location varchar(1000),
acc_process_flag varchar(1000),
forwarding_instructions varchar(1000),
print_option varchar(1000),
date_imported datetime,
spc_category_code varchar(1000),
discount decimal(38,18),
exchange_rate_flag varchar(1000),
previous_exchange_rate decimal(38,18),
order_date datetime,
accrual_reference varchar(1000),
requisition_description varchar(1000),
supplier_reminder_no decimal(38,18),
import_flag varchar(1000),
quotation_comments varchar(1000),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_expected_call_da
(
vessel_code varchar(1000),
exp_ref datetime,
agent_code varchar(1000),
port_name varchar(1000),
eta varchar(1000), 
currency varchar(1000),
rate decimal(38,18),
initial_journal_company varchar(1000),
initial_journal_series varchar(1000),
initial_journal_number varchar(1000),
initial_journal_date datetime,
second_journal_company varchar(1000),
second_journal_series varchar(1000),
second_journal_number varchar(1000),
second_journal_date datetime,
final_journal_company varchar(1000),
final_journal_series varchar(1000),
final_journal_number varchar(1000),
final_journal_date datetime,
received_by_user varchar(1000),
received_date datetime,
checked_by_user varchar(1000),
checked_date datetime,
rate_flag varchar(1000),
matching_company varchar(1000),
matching_series varchar(1000),
matching_number varchar(1000),
agent_relation varchar(1000),
berth varchar(1000),
"action" varchar(1000),
case_status varchar(1000),
serial_no varchar(1000),
internal_ref varchar(1000),
invoice_date datetime,
category varchar(1000),
da_comments varchar(1000),
cargo decimal(38,18),
third_journal_company varchar(1000),
third_journal_series varchar(1000),
third_journal_number varchar(1000),
third_journal_date datetime,
da_no decimal(38,18),
given_date datetime,
item_remarks varchar(1000),
update_user_id varchar(1000),
update_date datetime,
voyage_number varchar(1000),
matching_journal_line decimal(38,18),
sent_to_diabos varchar(1000),
initial_internal_ref varchar(1000),
is_general_da varchar(1000),
credit_days decimal(38,18),
payment_method varchar(1000),
attachment_code decimal(38,18),
invoice_date_out datetime,
dadesk_daref varchar(1000),
sap_document_number varchar(1000),
req_serial_no varchar(1000),
etd datetime,
operating_company varchar(1000),
cargo_grade varchar(1000),
cargo_grade2 varchar(1000),
cargo_grade3 varchar(1000),
cargo_qty2 decimal(38,18),
cargo_qty3 decimal(38,18),
sap_document_number_adv_clrnc varchar(1000),
sent_to_dadesk varchar(1000),
dadesk_invoiceref varchar(1000),
dadesk_invoiceref_second varchar(1000),
dadesk_invoiceref_third varchar(1000),
dadesk_invoiceref_final varchar(1000),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


create table epsdlplp.rej_sri_vessel_dry_dock_details
(   
vessel_code varchar(1000),
project_id decimal(38,18),
all_invoices_closed decimal(38,18),
yard_awarded varchar(1000),
project_status varchar(1000),
vessel_id varchar(1000),
project_date datetime,
supt_in_charge varchar(1000),
planned_total decimal(38,18),
supt_in_charge_signed varchar(1000),
business_mgr_signed varchar(1000),
approve1 varchar(1000),
approve3 varchar(1000),
a_supt_in_charge_signed varchar(1000),
a_business_mgr_signed varchar(1000),
a_approve1 varchar(1000),
a_approve3 varchar(1000),
actual_total decimal(38,18),
created_by varchar(1000),
create_date datetime,
actual_is_null decimal(38,18),
variance_total decimal(38,18),
variance_pct decimal(38,18),
planned_entry varchar(1000),
actual_entry varchar(1000),
dt_planned_entry datetime,
dt_actual_entry datetime,
uwild_status decimal(38,18),
tech_manager varchar(1000),
user_name varchar(1000),
planned_exit varchar(1000),
actual_exit varchar(1000),
dt_actual_exit datetime,
vessel_short_name varchar(1000),
fleet varchar(1000),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_budget_opex_monitor 
( 
vessel_code varchar(1000), 
vessel_name varchar(1000), 
ledger_card varchar(1000), 
budget_value decimal(10,2), 
total_period int,
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_supply_items 
( 
document_code varchar(1000),
item_serial_no decimal(38,18),
requisition_code varchar(1000),
order_code varchar(1000),
delivery_code varchar(1000),
invoice_code varchar(1000),
item_ref_code varchar(1000),
item_intern_ref varchar(1000),
item_system_code varchar(1000),
item_subsystem_code varchar(1000),
item_unit_group varchar(1000),
item_unit_id varchar(1000),
item_unit_factor decimal(38,18),
rob_qty decimal(38,18),
requested_qty decimal(38,18),
approved_qty decimal(38,18),
item_full_desc varchar(1000),
item_short_desc varchar(1000),
req_marked decimal(38,18),
order_marked decimal(38,18),
delivery_marked decimal(38,18),
invoice_marked decimal(38,18),
order_qty decimal(38,18),
order_unit_group varchar(1000),
order_unit_id varchar(1000),
order_unit_factor decimal(38,18),
order_price decimal(38,18),
order_currency varchar(1000),
order_rate decimal(38,18),
order_discount decimal(38,18),
deliverd_qty decimal(38,18),
deliverd_group varchar(1000),
deliverd_id varchar(1000),
deliverd_factor decimal(38,18),
deliverd_status decimal(38,18),
invoice_qty decimal(38,18),
invoice_group varchar(1000),
invoice_id varchar(1000),
invoice_factor decimal(38,18),
invoice_price decimal(38,18),
invoice_currency varchar(1000),
invoice_rate decimal(38,18),
invoice_discount decimal(38,18),
invoice_status decimal(38,18),
item_abbreviation varchar(1000),
order_abbreviation varchar(1000),
delivery_abbreviation varchar(1000),
invoice_abbreviation varchar(1000),
invoice_bookvalue decimal(38,18),
order_supplier varchar(1000),
parcial decimal(38,18),
item_status decimal(38,18),
invoice_final_date datetime,
order_vat decimal(38,18),
item_availability decimal(38,18),
revised_due_date datetime,
ready_date datetime,
received_onboard_date datetime,
item_expiry_date datetime,
item_invoice_selected decimal(38,18),
p_document_code varchar(1000),
p_document_line decimal(38,18),
n_document_code varchar(1000),
n_document_line decimal(38,18),
holder_location varchar(1000),
holder_document_code varchar(1000),
holder_document_line decimal(38,18),
despatch_reason varchar(1000),
despatch_comments varchar(1000),
"weight" decimal(38,18),
from_location varchar(1000),
to_location varchar(1000),
at_location varchar(1000),
dn_code varchar(1000),
saved_location varchar(1000),
saved_line decimal(38,18),
storage_place_no varchar(1000),
location_no varchar(1000),
additional_expenses decimal(38,18),
surcharges decimal(38,18),
warehouse_code varchar(1000),
warehouse_qty decimal(38,18),
warehouse_group varchar(1000),
warehouse_id varchar(1000),
warehouse_factor decimal(38,18),
warehouse_status decimal(38,18),
warehouse_marked decimal(38,18),
warehouse_abbreviation varchar(1000),
order_remarks varchar(1000),
maintenance_link varchar(1000),
item_delivery_date datetime,
export_flag varchar(1000),
item_origin varchar(1000),
supplier_comments	varchar(1000),
requisition_location	varchar(1000),
export_seq_int	int,
landed_status	varchar(1000),
item_ledger_card	varchar(1000),
proposed_item	varchar(1000),
acc_category_code	varchar(1000),
invoice_modified	varchar(1000),
psoft_data	varchar(1000),
working_qty	decimal(15,3),
item_delivery_evaluation	varchar(1000),
office_item_comments	varchar(1000),
item_delivery_comments	varchar(1000),
interface_code	varchar(1000),
mode_of_supply	varchar(1000),
budget_code	varchar(1000),
requisition_sorting	int,
order_sorting	int,
warehouse_sorting	int,
delivery_sorting	int,
invoice_sorting	int,
created_by_vessel	varchar(1000),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_item_ledgers 
(
ledger_card varchar(1000),
department varchar(1000),
catalogue varchar(1000),
catalogue_group varchar(1000),
check_budget varchar(1000),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
);


CREATE TABLE epsdlplp.rej_sri_del_departments 
( 
"name" varchar(1000),
code varchar(1000),
form_type varchar(1000),
dept_reference varchar(1000),
office_code varchar(1000),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_order_details 
( 
document_code varchar(1000),
document_date datetime,
order_code varchar(1000),
order_due_date datetime,
order_port varchar(1000),
supplier varchar(1000),
short_name varchar(1000),
report_value decimal(38,18),
order_agent varchar(1000),
agent varchar(1000),
approver varchar(1000),
total_items decimal(38,18), 
order_qty decimal(38,18),
total_poitems_cancelled decimal(38,18), 
delivery_port varchar(1000),
delivery_date datetime,
dlvr_qty decimal(38,18),
item_count decimal(38,18), 
follow_up varchar(1000),
delivery_point_id decimal(38,18), 
po_description varchar(1000),
total_weight decimal(38,18),
project_id decimal(38,18), 
vessel_code varchar(1000),
status_code decimal(38,18), 
order_status varchar(1000),
order_ready_flag varchar(1000),
po_remarks varchar(1000),
order_last_port varchar(1000),
order_last_point varchar(1000),
delivery_activity_id decimal(38,18), 
index_value decimal(38,18),
create_date datetime,
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
);


create table epsdlplp.rej_sri_dept_mapping
(  
"type" varchar(1000),
dept_code varchar(1000),   
acc_code varchar(1000),  
acrl_code varchar(1000),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_vessel_team_map
(
company varchar(1000),
"type" varchar(1000),
accounts_team varchar(1000),
business_team varchar(1000),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_department 
( 
child_value varchar(1000), 
"description" varchar(1000), 
department varchar(1000), 
department_description varchar(1000), 
parent2 varchar(1000), 
parent2_description varchar(1000), 
parent3 varchar(1000), 
parent3_description varchar(1000), 
parent4 varchar(1000), 
parent4_description varchar(1000), 
parent5 varchar(1000), 
parent5_description varchar(1000), 
parent6 varchar(1000), 
parent6_description varchar(1000), 
parent7 varchar(1000), 
parent7_description varchar(1000), 
parent8 varchar(1000), 
parent8_description varchar(1000), 
parent9 varchar(1000), 
parent9_description varchar(1000), 
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;


CREATE TABLE epsdlplp.rej_sri_data_security 
( 
user_email varchar(1000), 
company_codes varchar(1000), 
vessel_codes varchar(1000),
integration_key varchar(1000),
validation_error varchar(1000),
w_source_system varchar(1000),
w_src_file_name varchar(1000),
w_refresh_ts datetime,
w_job_instance_id varchar(1000),
w_business_dt datetime,
w_location varchar(1000),
w_batch_id int
) ;