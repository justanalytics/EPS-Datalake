CREATE TABLE epsdld.dim_reqn_audit
(
`audit_id` double,
`audit_date` timestamp,
`audit_user` string,
`crud_type` string,
`audit_details` string,
`document_code` string,
`integration_key` string,
`w_batch_id` double ,
`business_date` timestamp ,
`w_data_src_id` string,
`w_refresh_ts` timestamp ,
`w_x_custom` string,
`w_job_instance_id` bigint ,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_reqn_audit' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_supplier
(
`supplier_code` string,
`status` string,
`status_date` timestamp,
`status_due` timestamp,
`country` string,
`create_by` string,
`create_date` timestamp,
`supplier_name` string,
`last_used_date` timestamp,
`sl_enabled` string,
`verified` timestamp,
`status_remarks` string,
`scope` string,
`department` string,
`approved_by` string,
`verified_by` string,
`supplier_id` string,
`integration_key` string,
`w_batch_id` double ,
`business_date` timestamp ,
`w_data_src_id` string,
`w_refresh_ts` timestamp ,
`w_x_custom` string,
`w_job_instance_id` bigint ,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_supplier' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_department
(
`name` string,
`code` string,
`form_type` string,
`dept_reference` string,
`office_code` string,
`department_type` string,
`department_id` string,
`integration_key` string,
`w_batch_id` double ,
`business_date` timestamp ,
`w_data_src_id` string,
`w_refresh_ts` timestamp ,
`w_x_custom` string,
`w_job_instance_id` bigint ,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_department' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_requisitions
(
`vessel_code` string,
`department` string,
`document_code` string,
`document_no` decimal(38,18),
`document_date` timestamp,
`requisition_code` string,
`quotation_code` string,
`order_code` string,
`delivery_code` string,
`invoice_no` string,
`delivery_date` timestamp,
`ships_requisition_no` string,
`requisition_port` string,
`order_port` string,
`delivery_port` string,
`order_due_date` timestamp,
`requisition_eta` timestamp,
`requisition_etd` timestamp,
`voyage_id` string,
`voyage_number` string,
`protected` decimal(38,18),
`quotation_supplier` string,
`total_items` decimal(38,18),
`line_type` string,
`order_supplier` string,
`order_agent` string,
`comments` string,
`entry_unit_type` string,
`user` string,
`approver` string,
`verifier` string,
`currency` string,
`reference` string,
`additional_items` decimal(38,18),
`additional_price` decimal(38,18),
`journal_reference` string,
`tarriff_agreed` string,
`part_deliveries` string,
`user_1` string,
`user_2` string,
`user_3` string,
`user_4` string,
`tariff_agreed` string,
`extra_comments` string,
`total_add_expenses` decimal(38,18),
`dispatch_vessel_code` string,
`dispatch_department_code` string,
`dispatch_line` string,
`requisition_raised_date` timestamp,
`dn_code` string,
`urgency_code` string,
`invoice_supplier` string,
`supplier_location` string,
`period_required` decimal(38,18),
`terms` string,
`approver2` string,
`payment_terms` string,
`tariff_agreed_date` timestamp,
`commercial_contract` string,
`commercial_contract_date` timestamp,
`supplier_reminder` string,
`disputed_flag` string,
`budget_code` string,
`sent_to` string,
`warehouse_code` string,
`warehouse_supplier` string,
`delivery_to` string,
`maintenance_link` string,
`user_5` string,
`issued_by` string,
`prepare_direct` string,
`disputed_date` timestamp,
`approved_flag` string,
`approved_date` timestamp,
`sent_for_approval` string,
`sent_for_approval_date` timestamp,
`disputed_comments` string,
`approved_comments` string,
`buyer_comments` string,
`supplier_name` string,
`accounting_flag` decimal(38,18),
`created_by_vessel` string,
`delivery_confirmation_date` timestamp,
`acc_category_code` string,
`document_source` string,
`delivery_confirmation` string,
`vendor_location` string,
`acc_process_flag` string,
`forwarding_instructions` string,
`print_option` string,
`date_imported` timestamp,
`spc_category_code` string,
`discount` decimal(38,18),
`exchange_rate_flag` string,
`previous_exchange_rate` decimal(38,18),
`order_date` timestamp,
`accrual_reference` string,
`requisition_description` string,
`supplier_reminder_no` decimal(38,18),
`import_flag` string,
`quotation_comments` string,
`integration_key` string,
`requisition_id` string,
`w_batch_id` double ,
`business_date` timestamp ,
`w_data_src_id` string,
`w_refresh_ts` timestamp ,
`w_x_custom` string,
`w_job_instance_id` bigint ,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_requisitions' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_requisitions_category
(
`req_id` int,
`req_desc` string,
`document_code` string,
`period` timestamp,
`dept_name` string,
`requisition_code` string,
`department` string,
`vessel_code` string,
`order_code` string,
`rfq_supplier_name` string,
`vessel_name` string,
`integration_key` string,
`w_batch_id` double ,
`business_date` timestamp ,
`w_data_src_id` string,
`w_refresh_ts` timestamp ,
`w_x_custom` string,
`w_job_instance_id` bigint ,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_requisitions_category' TBLPROPERTIES ('transactional'='false');


drop table epsdld.dim_gl_company;
CREATE TABLE epsdld.dim_gl_company
(
`child_value` string,
`description` string,
`le` string,
`danaos_co_code` string,
`databasename` string,
`company_id` string,
`integration_key` string,
`w_batch_id` double ,
`business_date` timestamp ,
`w_data_src_id` string,
`w_refresh_ts` timestamp ,
`w_x_custom` string,
`w_job_instance_id` bigint ,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_company' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_data_security 
( 
`email_address` string, 
`dimension` string, 
`level` string,
`level_code` string,
`code` string,
`integration_key` string,
`w_batch_id` double ,
`business_date` timestamp ,
`w_data_src_id` double ,
`w_refresh_ts` timestamp ,
`w_x_custom` string,
`w_job_instance_id` bigint ,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
)  LOCATION '/mnt/epsdldeltadev/epsdld/dim_data_security' TBLPROPERTIES ('transactional'='false');



CREATE EXTERNAL TABLE `epsdld`.`dim_gl_future1`
(`future1_id` BIGINT, 
`future1_code` STRING, 
`future1_name` STRING
) 
using delta
LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_future1' TBLPROPERTIES ('transactional'='false');


CREATE TABLE `epsdld`.`dim_gl_future2`
(`future2_id` BIGINT, 
`future2_code` STRING, 
`future2_name` STRING
) 
using delta
LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_future2' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdld.dim_gl_intercompany
(
 `ledger_code` string,
 `name` string,
 `source_system` string,
 `ledger_type` string,
 `oracle_coa_code` string,
 `oracle_coa_description` string,
 `intercompany_code` string,
 `integration_key` string,
 `intercompany_id` string,
 `w_batch_id` double ,
 `business_date` timestamp ,
 `w_data_src_id` string ,
 `w_refresh_ts` timestamp ,
 `w_x_custom` string,
 `w_job_instance_id` bigint ,
 `w_curr_rec_flg` string,
 `w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_intercompany' TBLPROPERTIES ('transactional'='false');