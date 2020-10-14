CREATE TABLE epsdlsrid.sri_supplier_invoicing
(
`invoice_no` string,
`order_supplier` string,
`order_code` string,
`delivery_codes` string,
`invoice_date` timestamp,
`currency` string,
`invoice_amount` double,
`addn_packing_cost` double,
`reasons_for_variance` string,
`status` double,
`modified_by` string,
`modified_date` timestamp,
`created_date` timestamp,
`invoice_discount` double,
`addn_forwarding_cost` double,
`danaos_invoice_no` string,
`bank_id` double,
`sent_to_imos` double,
`integration_key` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` timestamp,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_supplier_invoicing' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_reqn_audit_log
(
`audit_id` double,
`audit_date` timestamp,
`audit_user` string,
`crud_type` string,
`audit_details` string,
`document_code` string,
`integration_key` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` timestamp,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_reqn_audit_log' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_supplier_registry
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
`integration_key` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` timestamp,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_supplier_registry' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_delivery_point
(
`id` decimal(38,18),
`vessel_code` string,
`handling_agent` string,
`ready_by_date` string,
`port` string,
`port_exp_ref` timestamp,
`type` string,
`consolidation_point` string,
`contact_point` string,
`date_range` string,
`delivery_date` timestamp,
`urgency` string,
`status` string,
`remarks` string,
`planned_date` timestamp,
`pic` string,
`telephone` string,
`integration_key` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` timestamp,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_delivery_point' TBLPROPERTIES ('transactional'='false');

