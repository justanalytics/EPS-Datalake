CREATE TABLE epsdlp.fact_supply_items
(
`document_code` string,
`item_serial_no` decimal(38,18),
`invoice_code` string,
`parcial` decimal(38,18),
`order_price` decimal(38,18),
`order_qty` decimal(38,18),
`order_rate` decimal(38,18),
`order_discount` decimal(38,18),
`invoice_price` decimal(38,18),
`invoice_qty` decimal(38,18),
`invoice_rate` decimal(38,18),
`invoice_discount` decimal(38,18),
`item_short_desc` string,
`order_currency` string,
`order_code` string,
`vessel_code` string,
`department` string,
`document_no` decimal(38,18),
`line_type` string,
`order_supplier` string,
`document_date` timestamp,
`comments` string,
`requisition_code` string,
`disputed_flag` string,
`approver` string,
`delivery_port_requisition` string,
`order_port` string,
`delivery_date` timestamp,
`delivery_port` string,
`po_description` string,
`department_id` string,
`vessel_id` string,
`supplier_id` string,
`requisition_id` string,
`integration_key` string,
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
) LOCATION '/mnt/epsdldeltaprod/epsdlp/fact_supply_items' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlp.fact_supplier_invoicing
(
`document_code` string,
`item_serial_no` decimal(38,18),
`invoice_code` string,
`parcial` decimal(38,18),
`order_price` decimal(38,18),
`order_qty` decimal(38,18),
`order_rate` decimal(38,18),
`order_discount` decimal(38,18),
`invoice_price` decimal(38,18),
`invoice_qty` decimal(38,18),
`invoice_rate` decimal(38,18),
`invoice_discount` decimal(38,18),
`item_short_desc` string,
`order_currency` string,
`invoice_amount` double,
`addn_packing_cost` double,
`addn_forwarding_cost` double,
`supplier_invoice_discount` double,
`status` double,
`currency` string,
`invoice_no` string,
`invoice_date` timestamp,
`order_code` string,
`vessel_code` string,
`department` string,
`document_no` decimal(38,18),
`line_type` string,
`order_supplier` string,
`document_date` timestamp,
`comments` string,
`requisition_code` string,
`delivery_date` timestamp,
`delivery_port` string,
`po_description` string,
`department_id` string,
`vessel_id` string,
`supplier_id` string,
`requisition_id` string,
`integration_key` string,
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
) LOCATION '/mnt/epsdldeltaprod/epsdlp/fact_supplier_invoicing' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlp.fact_requisitions_category
(
`amount_usd_po` decimal(38,18),
`line_type` string,
`order_date` timestamp,
`order_currency` string,
`document_date` timestamp,
`department_id` string,
`vessel_id` string,
`department` string,
`dept_name` string,
`document_code` string,
`order_code` string,
`requisition_code` string,
`rfq_supplier_name` string,
`vessel_code` string,
`vessel_name` string,
`req_desc` string,
`date_sent_to_office` timestamp,
`audit_date` timestamp,
`integration_key` string,
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
) LOCATION '/mnt/epsdldeltaprod/epsdlp/fact_requisitions_category' TBLPROPERTIES ('transactional'='false');

----Agnit

CREATE TABLE epsdlp.fact_gl_balance
(
`company_id` string,
`account_id` string,
`vessel_id` string,
`service_id` string,
`department_id` string,
`intercompany_id` string,
`future1_id` string,
`future2_id` string,
`journal_period` timestamp,
`balance` decimal(38,18),
`tot_book_debit` decimal(38,18),
`tot_book_credit` decimal(38,18),
`local_balance` decimal(38,18),
`tot_local_debit` decimal(38,18),
`tot_local_credit` decimal(38,18),
`htd_balance` decimal(38,18),
`w_batch_id` double,
`business_date` timestamp,
`w_data_src_id` string,
`w_refresh_ts` timestamp,
`w_x_custom` string,
`w_job_instance_id` bigint,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltaprod/epsdlp/fact_gl_balance' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlp.fact_port_calls_imos
(
`agreed_speed_a` decimal(38,18),
`agreed_speed_cons_a` decimal(38,18),
`agreed_speed_cons_d` decimal(38,18),
`agreed_speed_cons_o` decimal(38,18),
`agreed_speed_cons` decimal(38,18),
`agreed_speed_d` decimal(38,18),
`agreed_speed_engine_load_a` decimal(38,18),
`agreed_speed_engine_load_d` decimal(38,18),
`agreed_speed_engine_load_o` decimal(38,18),
`agreed_speed_engine_load` decimal(38,18),
`agreed_speed_o` decimal(38,18),
`agreed_speed` decimal(38,18),
`anchorage_delay` decimal(38,18),
`area` string,
`arr_dep_status` string,
`arrival_local` timestamp,
`ballast_laden_from_port` string,
`ballast_laden_to_port_a` string,
`ballast_laden_to_port_d` string,
`ballast_laden_to_port_o` string,
`ballast_laden_to_port` string,
`berth_to_pilot` decimal(38,18),
`cargo_inspector` string,
`cargo_scheduler` string,
`country` string,
`dem_des_days` decimal(38,18),
`dem_des_rate` decimal(38,18),
`departure_local` timestamp,
`est_cost_base` decimal(38,18),
`eta_gmt` timestamp,
`etb` timestamp,
`etd_gmt` timestamp,
`exp_ref` timestamp,
`extra_port_days` decimal(38,18),
`extra_sea_days` decimal(38,18),
`fixture_no` decimal(38,18),
`idle_days` decimal(38,18),
`instructed_sat_local` string,
`instructed_speed_a` decimal(38,18),
`instructed_speed_d` decimal(38,18),
`instructed_speed_o` decimal(38,18),
`instructed_speed` decimal(38,18),
`is_current_port_call` string,
`last_update_gmt` timestamp,
`last_user_id` string,
`low_speed_days` decimal(38,18),
`low_speed_miles` decimal(38,18),
`low_sulfur_eca` string,
`ls_miles` decimal(38,18),
`ls_port_days` decimal(38,18),
`ls_sea_days` decimal(38,18),
`master_seq` decimal(38,18),
`miles` decimal(38,18),
`name` string,
`order` decimal(38,18),
`pilot_to_berth` decimal(38,18),
`port_days` decimal(38,18),
`port_exp_amount_base` decimal(38,18),
`port_exp_amount_local` decimal(38,18),
`port_exp_curr` string,
`port_exp_exch_rate` decimal(38,18),
`port_func` string,
`port_name` string,
`port_no` decimal(38,18),
`port_range` string,
`port_region` string,
`port_status_code` string,
`remarks_fixture` string,
`remarks_operations` string,
`sea_days` decimal(38,18),
`seq` decimal(38,18),
`speed_from_port` decimal(38,18),
`speed_instruction_type` string,
`speed_to_port` decimal(38,18),
`telegram_date_a` timestamp,
`telegram_date_d` timestamp,
`telegram_date_o` timestamp,
`telegram_type_a` string,
`telegram_type_d` string,
`telegram_type_o` string,
`un_code` string,
`vessel_code` string,
`vessel_id` string,
`via` string,
`voyage_no` string,
`weather_factor_from_port` decimal(38,18),
`weather_factor_to_port` decimal(38,18),
`integration_key` string,
`w_batch_id` double,
`business_date` timestamp,
`w_data_src_id` string,
`w_refresh_ts` timestamp,
`w_x_custom` string,
`w_job_instance_id` bigint,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltaprod/epsdlp/fact_port_calls_imos' TBLPROPERTIES ('transactional'='false');

alter table epsdlp.fact_port_calls_imos add columns (latitude string, longitude string);

CREATE TABLE epsdlp.fact_port_calls_danaos
(
`agreed_speed_a` decimal(38,18),
`agreed_speed_cons_a` decimal(38,18),
`agreed_speed_cons_d` decimal(38,18),
`agreed_speed_cons_o` decimal(38,18),
`agreed_speed_cons` decimal(38,18),
`agreed_speed_d` decimal(38,18),
`agreed_speed_engine_load_a` decimal(38,18),
`agreed_speed_engine_load_d` decimal(38,18),
`agreed_speed_engine_load_o` decimal(38,18),
`agreed_speed_engine_load` decimal(38,18),
`agreed_speed_o` decimal(38,18),
`agreed_speed` decimal(38,18),
`anchorage_delay` decimal(38,18),
`area` string,
`arr_dep_status` string,
`arrival_local` timestamp,
`ballast_laden_from_port` string,
`ballast_laden_to_port_a` string,
`ballast_laden_to_port_d` string,
`ballast_laden_to_port_o` string,
`ballast_laden_to_port` string,
`berth_to_pilot` decimal(38,18),
`cargo_inspector` string,
`cargo_scheduler` string,
`country` string,
`dem_des_days` decimal(38,18),
`dem_des_rate` decimal(38,18),
`departure_local` timestamp,
`est_cost_base` decimal(38,18),
`eta_gmt` timestamp,
`etb` timestamp,
`etd_gmt` timestamp,
`exp_ref` timestamp,
`extra_port_days` decimal(38,18),
`extra_sea_days` decimal(38,18),
`fixture_no` decimal(38,18),
`idle_days` decimal(38,18),
`instructed_sat_local` string,
`instructed_speed_a` decimal(38,18),
`instructed_speed_d` decimal(38,18),
`instructed_speed_o` decimal(38,18),
`instructed_speed` decimal(38,18),
`is_current_port_call` string,
`last_update_gmt` timestamp,
`last_user_id` string,
`low_speed_days` decimal(38,18),
`low_speed_miles` decimal(38,18),
`low_sulfur_eca` string,
`ls_miles` decimal(38,18),
`ls_port_days` decimal(38,18),
`ls_sea_days` decimal(38,18),
`master_seq` decimal(38,18),
`miles` decimal(38,18),
`name` string,
`order` decimal(38,18),
`pilot_to_berth` decimal(38,18),
`port_days` decimal(38,18),
`port_exp_amount_base` decimal(38,18),
`port_exp_amount_local` decimal(38,18),
`port_exp_curr` string,
`port_exp_exch_rate` decimal(38,18),
`port_func` string,
`port_name` string,
`port_no` decimal(38,18),
`port_range` string,
`port_region` string,
`port_status_code` string,
`remarks_fixture` string,
`remarks_operations` string,
`sea_days` decimal(38,18),
`seq` decimal(38,18),
`speed_from_port` decimal(38,18),
`speed_instruction_type` string,
`speed_to_port` decimal(38,18),
`telegram_date_a` timestamp,
`telegram_date_d` timestamp,
`telegram_date_o` timestamp,
`telegram_type_a` string,
`telegram_type_d` string,
`telegram_type_o` string,
`un_code` string,
`vessel_code` string,
`vessel_id` string,
`via` string,
`voyage_no` string,
`weather_factor_from_port` decimal(38,18),
`weather_factor_to_port` decimal(38,18),
`integration_key` string,
`w_batch_id` double,
`business_date` timestamp,
`w_data_src_id` string,
`w_refresh_ts` timestamp,
`w_x_custom` string,
`w_job_instance_id` bigint,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltaprod/epsdlp/fact_port_calls_danaos' TBLPROPERTIES ('transactional'='false');

alter table epsdlp.fact_port_calls_danaos add columns (latitude string, longitude string);

CREATE TABLE epsdlp.fact_port_calls_master
(
`agreed_speed_a` decimal(38,18),
`agreed_speed_cons_a` decimal(38,18),
`agreed_speed_cons_d` decimal(38,18),
`agreed_speed_cons_o` decimal(38,18),
`agreed_speed_cons` decimal(38,18),
`agreed_speed_d` decimal(38,18),
`agreed_speed_engine_load_a` decimal(38,18),
`agreed_speed_engine_load_d` decimal(38,18),
`agreed_speed_engine_load_o` decimal(38,18),
`agreed_speed_engine_load` decimal(38,18),
`agreed_speed_o` decimal(38,18),
`agreed_speed` decimal(38,18),
`anchorage_delay` decimal(38,18),
`area` string,
`arr_dep_status` string,
`arrival_local` timestamp,
`ballast_laden_from_port` string,
`ballast_laden_to_port_a` string,
`ballast_laden_to_port_d` string,
`ballast_laden_to_port_o` string,
`ballast_laden_to_port` string,
`berth_to_pilot` decimal(38,18),
`cargo_inspector` string,
`cargo_scheduler` string,
`country` string,
`dem_des_days` decimal(38,18),
`dem_des_rate` decimal(38,18),
`departure_local` timestamp,
`est_cost_base` decimal(38,18),
`eta_gmt` timestamp,
`etb` timestamp,
`etd_gmt` timestamp,
`exp_ref` timestamp,
`extra_port_days` decimal(38,18),
`extra_sea_days` decimal(38,18),
`fixture_no` decimal(38,18),
`idle_days` decimal(38,18),
`instructed_sat_local` string,
`instructed_speed_a` decimal(38,18),
`instructed_speed_d` decimal(38,18),
`instructed_speed_o` decimal(38,18),
`instructed_speed` decimal(38,18),
`is_current_port_call` string,
`last_update_gmt` timestamp,
`last_user_id` string,
`low_speed_days` decimal(38,18),
`low_speed_miles` decimal(38,18),
`low_sulfur_eca` string,
`ls_miles` decimal(38,18),
`ls_port_days` decimal(38,18),
`ls_sea_days` decimal(38,18),
`master_seq` decimal(38,18),
`miles` decimal(38,18),
`name` string,
`order` decimal(38,18),
`pilot_to_berth` decimal(38,18),
`port_days` decimal(38,18),
`port_exp_amount_base` decimal(38,18),
`port_exp_amount_local` decimal(38,18),
`port_exp_curr` string,
`port_exp_exch_rate` decimal(38,18),
`port_func` string,
`port_name` string,
`port_no` decimal(38,18),
`port_range` string,
`port_region` string,
`port_status_code` string,
`remarks_fixture` string,
`remarks_operations` string,
`sea_days` decimal(38,18),
`seq` decimal(38,18),
`speed_from_port` decimal(38,18),
`speed_instruction_type` string,
`speed_to_port` decimal(38,18),
`telegram_date_a` timestamp,
`telegram_date_d` timestamp,
`telegram_date_o` timestamp,
`telegram_type_a` string,
`telegram_type_d` string,
`telegram_type_o` string,
`un_code` string,
`vessel_code` string,
`vessel_id` string,
`via` string,
`voyage_no` string,
`weather_factor_from_port` decimal(38,18),
`weather_factor_to_port` decimal(38,18),
`integration_key` string,
`w_batch_id` double,
`business_date` timestamp,
`w_data_src_id` string,
`w_refresh_ts` timestamp,
`w_x_custom` string,
`w_job_instance_id` bigint,
`w_curr_rec_flg` string,
`w_location` string) using delta
PARTITIONED BY  (
`business_date`
) LOCATION '/mnt/epsdldeltaprod/epsdlp/fact_port_calls_master' TBLPROPERTIES ('transactional'='false');

alter table epsdlp.fact_port_calls_master add columns (latitude string, longitude string);
alter table epsdlp.fact_port_calls_master add columns (lat_num decimal(38,18), lon_num decimal(38,18));