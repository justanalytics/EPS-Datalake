CREATE TABLE epsdld.dim_gl_account
(
 `oracle_natural_account` string,
 `ledger_card` string,
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
 `source_system` string,
 `integration_key` string,
 `account_id` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_account' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdld.dim_gl_reporting_lines
(
 `oracle_natural_account` string,
 `account_group` string,
 `acct_grouping_level4` string,
 `acct_grouping_level3` string,
 `acct_grouping_level2` string,
 `acct_grouping_level1` string,
 `ledger_card` string,
 `danaos_name` string,
 `source_system` string,
 `integration_key` string,
 `account_id` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_reporting_lines' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_gl_company
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
 `company_id` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_company' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_gl_vessel
(
 `addl_attribute1` string ,
 `addl_attribute2` string ,
 `addl_attribute3` string ,
 `built` double ,
 `company_structure_in_danaos` string ,
 `date_built` timestamp ,
 `dwt` double ,
 `eps_ownership` string ,
 `eps_uk_ownership` string ,
 `fleet_type` string ,
 `fleet_type_code` string ,
 `fleet_type_sort` string ,
 `fleet_type_sub_code` string ,
 `fleet_type_sub` string ,
 `fleet_code` string ,
 `fleet` string ,
 `owning_entity` string ,
 `owning_entity_codes` string ,
 `ownership` string ,
 `vessel_type` string ,
 `vessel_group` string ,
 `built_year` string ,
 `vessel_class` string ,
 `journal_end_date` timestamp ,
 `journal_start_date` timestamp ,
 `last_updated_by` string ,
 `last_updated_date` timestamp ,
 `lwt` double ,
 `managed_by_eps` string ,
 `ownership_type` string ,
 `period` string ,
 `qct_ownership` string ,
 `qct_start_date` timestamp ,
 `qps_ownership` string ,
 `sold_date` timestamp ,
 `start_date` timestamp ,
 `useful_life` double ,
 `vessel_code` string ,
 `vessel_name` string ,
 `vessel_ownership` string,
 `region` string,
 `integration_key` string,
 `vessel_id` string
 `include_in_drc` int,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_vessel' TBLPROPERTIES ('transactional'='false');


create table epsdld.dim_gl_service 
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
 `service_id` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_service' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_gl_department 
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
`department_id` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdld/dim_gl_department' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_data_security 
( 
`user_email` string, 
`company_codes` string, 
`vessel_codes` string,
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