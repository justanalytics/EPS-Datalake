CREATE TABLE  epsdlsrid.rej_sri_account
(
 `oracle_natural_account` string,
 `description` string,
 `parent1_code` string,
 `parent1_description` string,
 `parent2_code` string,
 `parent2_description` string,
 `parent3_code` string,
 `parent3_description` string,
 `parent4_code` string,
 `parent4_description` string,
 `parent5_code` string,
 `parent5_description` string,
 `financial_category` string,
 `financial_sub_category` string,
 `danaos_name` string,
 `danaos_description_details` string,
 `danaos_description_sub` string,
 `danaos_description_main` string,
 `integration_key` string,
 `_validation_error` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_account' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrid.rej_sri_account_mapping
(
 `oracle_natural_account` string,
 `ledger_card` string,
 `source_system` string,
 `integration_key` string,
 `_validation_error` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_account_mapping' TBLPROPERTIES ('transactional'='false'); 


CREATE TABLE  epsdlsrid.rej_sri_reporting_lines
(
 `oracle_natural_account` string,
 `account_group` string,
 `acct_grouping_level4` string,
 `acct_grouping_level3` string,
 `acct_grouping_level2` string,
 `acct_grouping_level1` string,
 `ledger_card` string,
 `integration_key` string,
 `_validation_error` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_reporting_lines' TBLPROPERTIES ('transactional'='false');


CREATE TABLE   epsdlsrid.rej_sri_company_hierarchy
(
 `child_value` string,
 `child_description` string,
 `parent1` string,
 `parent1_description` string,
 `parent2` string,
 `parent2_description` string,
 `parent3` string,
 `parent3_descriptin` string,
 `parent4` string,
 `parent4_description` string,
 `parent5` string,
 `parent5_description` string,
 `parent6` string,
 `parent6_description` string,
 `parent7` string,
 `parent7_description` string,
 `parent8` string,
 `parent8_description` string,
 `parent9` string,
 `parent9_description` string,
 `le` string,
 `danaos_co_code` string,
 `database` string,
 `integration_key` string,
 `_validation_error` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_company_hierarchy' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrid.rej_sri_company_master
(
 `child_value` string,
 `danaos_co_code` string,
 `database` string,
 `company` string,
 `short_name` string,
 `name` string,
 `managed_by` string,
 `company_group` string,
 `chart` string,
 `company_type` string,
 `base_currency` string,
 `remarks` string,
 `group_flag_1` string,
 `group_flag_2` string,
 `official_currency` string,
 `global_vessel_id` string,
 `create_intercompanies` string,
 `is_filing` string,
 `active_flag` string,
 `company_level` decimal(38,18),
 `bank_ledger` string,
 `group_details_from` timestamp,
 `group_details_to` timestamp,
 `tonnage_tax_from` timestamp,
 `tonnage_tax_to` timestamp,
 `vat_group_from` timestamp,
 `vat_group_to` timestamp,
 `incexp_managed_by` string,
 `integration_key` string,
 `_validation_error` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_company_master' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrid.rej_sri_vessel_hierarchy
(
 `vessel_code` string,
 `vessel_name` string,
 `fleet_type_sub_code` string,
 `fleet_type_sub` string,
 `fleet_type_code` string,
 `fleet_type` string,
 `fleet_code` string,
 `fleet` string,
 `integration_key` string,
 `_validation_error` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_vessel_hierarchy' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrid.rej_sri_vessel_master
(
 `vessel_code` string,
 `owning_entity` string,
 `owning_entity_codes` string,
 `ownership` string,
 `vessel_type` string,
 `vessel_group` string,
 `dwt` decimal(28,10),
 `built_year` decimal(28,10),
 `sold_date` timestamp,
 `vessel_class` string,
 `period` string,
 `company_structure_in_danaos` string,
 `qps_ownership` string,
 `qct_ownership` string,
 `managed_by_eps` string,
 `ownership_type` string,
 `built` decimal(28,10),
 `date_built` timestamp,
 `useful_life` decimal(28,10),
 `lwt` decimal(28,10),
 `start_date` timestamp,
 `journal_start_date` timestamp,
 `journal_end_date` timestamp,
 `qct_start_date` timestamp,
 `addl_attribute1` string,
 `addl_attribute2` string,
 `addl_attribute3` string,
 `last_updated_date` timestamp,
 `last_updated_by` string,
 `eps_ownership` string,
 `eps_uk_ownership` string,
 `fleet_type_sort` string,
 `vessel_ownership` string,
 `region` string,
 `include_in_drc` int,
 `integration_key` string,
 `_validation_error` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_vessel_master' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrid.rej_sri_service_hierarchy
(
 `service_code` string,
 `service_description` string,
 `parent1_code` string,
 `parent1_description` string,
 `parent2_code` string,
 `parent2_description` string,
 `parent3_code` string,
 `parent3_description` string,
 `parent4_code` string,
 `parent4_description` string,
 `parent5_code` string,
 `parent5_description` string,
 `parent6_code` string,
 `parent6_description` string,
 `parent7_code` string,
 `parent7_description` string,
 `parent8_code` string,
 `parent8_description` string,
 `parent9_code` string,
 `parent9_description` string,
 `integration_key` string,
 `_validation_error` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_service_hierarchy' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_documents 
( 
`document_date` timestamp,
`document_type` string,
`our_company` string,
`from_to` string,
`serial_no` string,
`issue_date` timestamp,
`place` string,
`narrative` string,
`name` string,
`due_date` timestamp,
`currency` string,
`amount` decimal(38,18),
`book_value` decimal(38,18),
`vat_amount` decimal(38,18),
`vat_category` string,
`vat_number` string,
`inc_exp_category` string,
`inc_exp_group` string,
`document_subject` string,
`document_subsubject` string,
`document_category` string,
`transaction_type` string,
`journal_company` string,
`journal_series` string,
`journal_number` string,
`journal_line` decimal(38,18),
`journal_date` timestamp,
`journal_status` string,
`journal_user` string,
`journal_posting` timestamp,
`accrued_on_date` timestamp,
`accrued_by_user` string,
`document_status` string,
`created_by_user` string,
`finalized_by_user` string,
`filed_to` string,
`bank` string,
`budget` string,
`open_item_status` string,
`matching_company` string,
`matching_series` string,
`matching_number` string,
`matching_line` decimal(38,18),
`debit_credit` string,
`remarks` string,
`operation_code1` string,
`operation_id1` string,
`operation_code2` string,
`operation_id2` string,
`allocation_date_from` timestamp,
`allocation_date_to` timestamp,
`entry_number` decimal(38,18),
`tot_local_debit` decimal(38,18),
`tot_local_credit` decimal(38,18),
`tot_book_debit` decimal(38,18),
`tot_book_credit` decimal(38,18),
`flag1` string,
`flag2` string,
`reporting_amount` decimal(38,18),
`set_currency_amount` decimal(38,18),
`approval_level` string,
`book_value_off` decimal(38,18),
`book_debit_off` decimal(38,18),
`book_credit_off` decimal(38,18),
`pay_flag` string,
`prt_flag` string,
`accrual_type` string,
`entry_rate` decimal(38,18),
`bunker_qty` decimal(38,18),
`bunker_price` decimal(38,18),
`application_code` string,
`application_ref` string,
`operation_subid_1` string,
`operation_subid_2` string,
`entry_rate2` decimal(38,18),
`book_value2` decimal(38,18),
`tot_book_debit2` decimal(38,18),
`tot_book_credit2` decimal(38,18),
`currency3` string,
`entry_rate3` decimal(38,18),
`book_value3` decimal(38,18),
`tot_book_debit3` decimal(38,18),
`tot_book_credit3` decimal(38,18),
`team` string,
`job_number` string,
`vessel_code` string,
`ar_type` string,
`approved_by` string,
`import_status` string,
`imported_by` string,
`sup_match` string,
`journal_user_2` string,
`accrued_by_user_2` string,
`created_by_user_2` string,
`finalized_by_user_2` string,
`flag3` string,
`order_number` string,
`supplier_code` string,
`last_updated` timestamp,
`db_userid` string,
`fx_rate` decimal(38,18),
`mc_reference` string,
`spot_rate_flag` string,
`filed_to3` string,
`pay_approval_level` decimal(38,18),
`pay_selected` string,
`payment_method` string,
`withholding_tax_amount` decimal(38,18),
`instrument_no` string,
`withholding_tax_code` string,
`flag4` string,
`submission_date` timestamp,
`value_date` timestamp,
`transaction_cost` string,
`accrual_flag` decimal(38,18),
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_documents' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_requisitions 
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
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_requisitions' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_expected_call_da
(
`vessel_code` string,
`exp_ref` timestamp,
`agent_code` string,
`port_name` string,
`eta` string, 
`currency` string,
`rate` decimal(38,18),
`initial_journal_company` string,
`initial_journal_series` string,
`initial_journal_number` string,
`initial_journal_date` timestamp,
`second_journal_company` string,
`second_journal_series` string,
`second_journal_number` string,
`second_journal_date` timestamp,
`final_journal_company` string,
`final_journal_series` string,
`final_journal_number` string,
`final_journal_date` timestamp,
`received_by_user` string,
`received_date` timestamp,
`checked_by_user` string,
`checked_date` timestamp,
`rate_flag` string,
`matching_company` string,
`matching_series` string,
`matching_number` string,
`agent_relation` string,
`berth` string,
`action` string,
`case_status` string,
`serial_no` string,
`internal_ref` string,
`invoice_date` timestamp,
`category` string,
`da_comments` string,
`cargo` decimal(38,18),
`third_journal_company` string,
`third_journal_series` string,
`third_journal_number` string,
`third_journal_date` timestamp,
`da_no` decimal(38,18),
`given_date` timestamp,
`item_remarks` string,
`update_user_id` string,
`update_date` timestamp,
`voyage_number` string,
`matching_journal_line` decimal(38,18),
`sent_to_diabos` string,
`initial_internal_ref` string,
`is_general_da` string,
`credit_days` decimal(38,18),
`payment_method` string,
`attachment_code` decimal(38,18),
`invoice_date_out` timestamp,
`dadesk_daref` string,
`sap_document_number` string,
`req_serial_no` string,
`etd` timestamp,
`operating_company` string,
`cargo_grade` string,
`cargo_grade2` string,
`cargo_grade3` string,
`cargo_qty2` decimal(38,18),
`cargo_qty3` decimal(38,18),
`sap_document_number_adv_clrnc` string,
`sent_to_dadesk` string,
`dadesk_invoiceref` string,
`dadesk_invoiceref_second` string,
`dadesk_invoiceref_third` string,
`dadesk_invoiceref_final` string,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_expected_call_da' TBLPROPERTIES ('transactional'='false');


create table epsdlsrid.rej_sri_vessel_dry_dock_details
(   
`vessel_code` string,
`project_id` double,
`all_invoices_closed` decimal(38,18),
`yard_awarded` string,
`project_status` string,
`vessel_id` string,
`project_date` timestamp,
`supt_in_charge` string,
`planned_total` double,
`supt_in_charge_signed` string,
`business_mgr_signed` string,
`approve1` string,
`approve3` string,
`a_supt_in_charge_signed` string,
`a_business_mgr_signed` string,
`a_approve1` string,
`a_approve3` string,
`actual_total` double,
`created_by` string,
`create_date` timestamp,
`actual_is_null` double,
`variance_total` double,
`variance_pct` double,
`planned_entry` string,
`actual_entry` string,
`dt_planned_entry` timestamp,
`dt_actual_entry` timestamp,
`uwild_status` decimal(38,18),
`tech_manager` string,
`user_name` string,
`planned_exit` string,
`actual_exit` string,
`dt_actual_exit` timestamp,
`vessel_short_name` string,
`fleet` string,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_vessel_dry_dock_details' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_budget_opex_monitor 
( 
`vessel_code` string, 
`vessel_name` string, 
`ledger_card` string, 
`budget_value` decimal(10,2), 
`total_period` bigint,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_budget_opex_monitor' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_supply_items 
( 
`document_code` string,
`item_serial_no` decimal(38,18),
`requisition_code` string,
`order_code` string,
`delivery_code` string,
`invoice_code` string,
`item_ref_code` string,
`item_intern_ref` string,
`item_system_code` string,
`item_subsystem_code` string,
`item_unit_group` string,
`item_unit_id` string,
`item_unit_factor` decimal(38,18),
`rob_qty` decimal(38,18),
`requested_qty` decimal(38,18),
`approved_qty` decimal(38,18),
`item_full_desc` string,
`item_short_desc` string,
`req_marked` decimal(38,18),
`order_marked` decimal(38,18),
`delivery_marked` decimal(38,18),
`invoice_marked` decimal(38,18),
`order_qty` decimal(38,18),
`order_unit_group` string,
`order_unit_id` string,
`order_unit_factor` decimal(38,18),
`order_price` decimal(38,18),
`order_currency` string,
`order_rate` decimal(38,18),
`order_discount` decimal(38,18),
`deliverd_qty` decimal(38,18),
`deliverd_group` string,
`deliverd_id` string,
`deliverd_factor` decimal(38,18),
`deliverd_status` decimal(38,18),
`invoice_qty` decimal(38,18),
`invoice_group` string,
`invoice_id` string,
`invoice_factor` decimal(38,18),
`invoice_price` decimal(38,18),
`invoice_currency` string,
`invoice_rate` decimal(38,18),
`invoice_discount` decimal(38,18),
`invoice_status` decimal(38,18),
`item_abbreviation` string,
`order_abbreviation` string,
`delivery_abbreviation` string,
`invoice_abbreviation` string,
`invoice_bookvalue` decimal(38,18),
`order_supplier` string,
`parcial` decimal(38,18),
`item_status` decimal(38,18),
`invoice_final_date` timestamp,
`order_vat` decimal(38,18),
`item_availability` decimal(38,18),
`revised_due_date` timestamp,
`ready_date` timestamp,
`received_onboard_date` timestamp,
`item_expiry_date` timestamp,
`item_invoice_selected` decimal(38,18),
`p_document_code` string,
`p_document_line` decimal(38,18),
`n_document_code` string,
`n_document_line` decimal(38,18),
`holder_location` string,
`holder_document_code` string,
`holder_document_line` decimal(38,18),
`despatch_reason` string,
`despatch_comments` string,
`weight` decimal(38,18),
`from_location` string,
`to_location` string,
`at_location` string,
`dn_code` string,
`saved_location` string,
`saved_line` decimal(38,18),
`storage_place_no` string,
`location_no` string,
`additional_expenses` decimal(38,18),
`surcharges` decimal(38,18),
`warehouse_code` string,
`warehouse_qty` decimal(38,18),
`warehouse_group` string,
`warehouse_id` string,
`warehouse_factor` decimal(38,18),
`warehouse_status` decimal(38,18),
`warehouse_marked` decimal(38,18),
`warehouse_abbreviation` string,
`order_remarks` string,
`maintenance_link` string,
`item_delivery_date` timestamp,
`export_flag` string,
`item_origin` string,
`supplier_comments`	string,
`requisition_location`	string,
`export_seq_int`	bigint,
`landed_status`	string,
`item_ledger_card`	string,
`proposed_item`	string,
`acc_category_code`	string,
`invoice_modified`	string,
`psoft_data`	string,
`working_qty`	decimal(15,3),
`item_delivery_evaluation`	string,
`office_item_comments`	string,
`item_delivery_comments`	string,
`interface_code`	string,
`mode_of_supply`	string,
`budget_code`	string,
`requisition_sorting`	bigint,
`order_sorting`	bigint,
`warehouse_sorting`	bigint,
`delivery_sorting`	bigint,
`invoice_sorting`	bigint,
`created_by_vessel`	string,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_supply_items' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_item_ledgers 
(
`ledger_card` string,
`department` string,
`catalogue` string,
`catalogue_group` string,
`check_budget` string,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_item_ledgers' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_del_departments 
( 
`name` string,
`code` string,
`form_type` string,
`dept_reference` string,
`office_code` string,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_del_departments' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_order_details 
( 
`document_code` string,
`document_date` timestamp,
`order_code` string,
`order_due_date` timestamp,
`order_port` string,
`supplier` string,
`short_name` string,
`report_value` double,
`order_agent` string,
`agent` string,
`approver` string,
`total_items` decimal(38,18), 
`order_qty` double,
`total_poitems_cancelled` decimal(38,18), 
`delivery_port` string,
`delivery_date` timestamp,
`dlvr_qty` double,
`item_count` decimal(38,18), 
`follow_up` string,
`delivery_point_id` decimal(38,18), 
`po_description` string,
`total_weight` double,
`project_id` decimal(38,18), 
`vessel_code` string,
`status_code` decimal(38,18), 
`order_status` string,
`order_ready_flag` string,
`po_remarks` string,
`order_last_port` string,
`order_last_point` string,
`delivery_activity_id` decimal(38,18), 
`index_value` double,
`create_date` timestamp,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_order_details' TBLPROPERTIES ('transactional'='false');


create table epsdlsrid.rej_sri_dept_mapping
(  
`type` string,
`dept_code` string,   
`acc_code` string,  
`acrl_code` string,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_dept_mapping' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_vessel_team_map
(
`company` string,
`type` string,
`accounts_team` string,
`business_team` string,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_vessel_team_map' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_department 
( 
`child_value` string, 
`description` string, 
`department` string, 
`department_description` string, 
`parent2` string, 
`parent2_description` string, 
`parent3` string, 
`parent3_description` string, 
`parent4` string, 
`parent4_description` string, 
`parent5` string, 
`parent5_description` string, 
`parent6` string, 
`parent6_description` string, 
`parent7` string, 
`parent7_description` string, 
`parent8` string, 
`parent8_description` string, 
`parent9` string, 
`parent9_description` string, 
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_department' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.rej_sri_data_security 
( 
`user_email` string, 
`company_codes` string, 
`vessel_codes` string,
`integration_key` string,
`_validation_error` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` date,
`w_location` string,
`w_batch_id` bigint
) using delta
PARTITIONED BY  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/rej_sri_data_security' TBLPROPERTIES ('transactional'='false');