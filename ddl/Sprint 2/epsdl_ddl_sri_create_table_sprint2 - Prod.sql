CREATE TABLE epsdlsrip.sri_supplier_invoicing
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
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_supplier_invoicing' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrip.sri_reqn_audit_log
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
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_reqn_audit_log' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrip.sri_supplier_registry
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
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_supplier_registry' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrip.sri_delivery_point
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
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_delivery_point' TBLPROPERTIES ('transactional'='false');

---Agnit

-- CREATE TABLE epsdlsrip.sri_imos_port_call
-- (
-- `agreed_speed` decimal(38,18),
-- `agreed_speed_cons` decimal(38,18),
-- `agreed_speed_engine_load` decimal(38,18),
-- `anchorage_delay` decimal(38,18),
-- `arr_dep_status` string,
-- `arrival_local` timestamp,
-- `ballast_laden_from_port` string,
-- `ballast_laden_to_port` string,
-- `berth_to_pilot` decimal(38,18),
-- `cargo_inspector` string,
-- `cargo_scheduler` string,
-- `dem_des_days` decimal(38,18),
-- `dem_des_rate` decimal(38,18),
-- `departure_local` timestamp,
-- `est_cost_base` decimal(38,18),
-- `eta_gmt` timestamp,
-- `etb` timestamp,
-- `etd_gmt` timestamp,
-- `extra_port_days` decimal(38,18),
-- `extra_sea_days` decimal(38,18),
-- `fixture_no` decimal(38,18),
-- `idle_days` decimal(38,18),
-- `instructed_sat_local` string,
-- `instructed_speed` decimal(38,18),
-- `is_current_port_call` string,
-- `last_update_gmt` timestamp,
-- `last_user_id` string,
-- `low_speed_days` decimal(38,18),
-- `low_speed_miles` decimal(38,18),
-- `ls_miles` decimal(38,18),
-- `ls_port_days` decimal(38,18),
-- `ls_sea_days` decimal(38,18),
-- `master_seq` decimal(38,18),
-- `miles` decimal(38,18),
-- `order` decimal(38,18),
-- `pilot_to_berth` decimal(38,18),
-- `port_days` decimal(38,18),
-- `port_exp_amount_base` decimal(38,18),
-- `port_exp_amount_local` decimal(38,18),
-- `port_exp_curr` string,
-- `port_exp_exch_rate` decimal(38,18),
-- `port_func` string,
-- `port_name` string,
-- `port_no` decimal(38,18),
-- `port_status_code` string,
-- `sea_days` decimal(38,18),
-- `seq` decimal(38,18),
-- `speed_from_port` decimal(38,18),
-- `speed_instruction_type` string,
-- `speed_to_port` decimal(38,18),
-- `vessel_code` string,
-- `via` string,
-- `voyage_no` decimal(38,18),
-- `weather_factor_from_port` decimal(38,18),
-- `weather_factor_to_port` decimal(38,18),
-- `remarks_fixture` string,
-- `remarks_operations` string,
-- `un_code` string,
-- `country` string,
-- `area` string,
-- `port_range` string,
-- `port_region` string,
-- `low_sulfur_eca` string,
-- `name` string,
-- `integration_key` string,
-- `w_source_system` string,
-- `w_src_file_name` string,
-- `w_refresh_ts` timestamp,
-- `w_job_instance_id` string,
-- `w_business_dt` timestamp,
-- `w_location` string,
-- `w_batch_id` bigint
-- ) 
-- using delta
-- PARTITIONED BY  (
-- `w_business_dt`,
-- `w_source_system`,
-- `w_location`,
-- `w_batch_id`
-- )  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_imos_port_call' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrip.sri_imos_expected_call
(
`agreed_speed` decimal(38,18),
`agreed_speed_cons` decimal(38,18),
`agreed_speed_engine_load` decimal(38,18),
`anchorage_delay` decimal(38,18),
`arr_dep_status` string,
`arrival_local` timestamp,
`ballast_laden_from_port` string,
`ballast_laden_to_port` string,
`berth_to_pilot` decimal(38,18),
`cargo_inspector` string,
`cargo_scheduler` string,
`dem_des_days` decimal(38,18),
`dem_des_rate` decimal(38,18),
`departure_local` timestamp,
`est_cost_base` decimal(38,18),
`eta_gmt` timestamp,
`etb` timestamp,
`etd_gmt` timestamp,
`extra_port_days` decimal(38,18),
`extra_sea_days` decimal(38,18),
`fixture_no` decimal(38,18),
`idle_days` decimal(38,18),
`instructed_sat_local` string,
`instructed_speed` decimal(38,18),
`is_current_port_call` string,
`last_update_gmt` timestamp,
`last_user_id` string,
`low_speed_days` decimal(38,18),
`low_speed_miles` decimal(38,18),
`ls_miles` decimal(38,18),
`ls_port_days` decimal(38,18),
`ls_sea_days` decimal(38,18),
`master_seq` decimal(38,18),
`miles` decimal(38,18),
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
`port_status_code` string,
`sea_days` decimal(38,18),
`seq` decimal(38,18),
`speed_from_port` decimal(38,18),
`speed_instruction_type` decimal(38,18),
`speed_to_port` decimal(38,18),
`vessel_code` string,
`via` string,
`voyage_no` decimal(38,18),
`weather_factor_from_port` decimal(38,18),
`weather_factor_to_port` decimal(38,18),
`remarks_fixture` string,
`remarks_operations` string,
`un_code` string,
`country` string,
`area` string,
`port_range` string,
`port_region` string,
`low_sulfur_eca` string,
`name` string,
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
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_imos_expected_call' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrip.sri_expected_call
(
`vessel_code` string,
`eta` timestamp,
`port_name` string,
`declared_y_n` string,
`owners_agents_code` string,
`contact` string,
`contact_tel_aoh` string,
`charterers_agents_code` string,
`contact_c_a` string,
`contact_tel_aoh_c_a` string,
`subagent` string,
`contact_subagent` string,
`contact_subagent_tel_aoh` string,
`port_action` string,
`etd` timestamp,
`general_comments` string,
`operation_actions` string,
`technical_actions` string,
`port_capt_manning_actions` string,
`insurance_actions` string,
`other_actions` string,
`created_on` timestamp,
`creator` string,
`last_updated` timestamp,
`updated_by` string,
`notice1_days` decimal(38,18),
`notice2_days` decimal(38,18),
`notice3_days` decimal(38,18),
`notice4_days` decimal(38,18),
`notice5_days` decimal(38,18),
`notice6_days` decimal(38,18),
`notice7_days` decimal(38,18),
`notice8_days` decimal(38,18),
`notice9_days` decimal(38,18),
`notice1_ok` string,
`notice2_ok` string,
`notice3_ok` string,
`notice4_ok` string,
`notice5_ok` string,
`notice6_ok` string,
`notice7_ok` string,
`notice8_ok` string,
`notice9_ok` string,
`owners_agents_tel` string,
`owners_agents_fax` string,
`owners_agents_tlx` string,
`contact_mob_tel` string,
`reference` string,
`exp_ref` timestamp,
`voy_id` string,
`sub_voy_no` string,
`freight_tax` decimal(38,18),
`via_cost` decimal(38,18),
`insurance_cost` decimal(38,18),
`est_days` decimal(38,18),
`est_rate` decimal(38,18),
`canal_expenses` decimal(38,18),
`extra_days` decimal(38,18),
`rate_close` string,
`rate_unit` string,
`l_d_rate` decimal(38,18),
`cargo_unit` string,
`cargo_qty` decimal(38,18),
`delays` decimal(38,18),
`vsl_sea_days` decimal(38,18),
`fo_cons_delays` decimal(38,18),
`do_cons_delays` decimal(38,18),
`vsl_next_port` string,
`vsl_eta_next_port` timestamp,
`vsl_eta_next_port_loc` timestamp,
`prev_exp_ref` timestamp,
`next_exp_ref` timestamp,
`created_on_date` timestamp,
`voy_series` string,
`berth` string,
`arrival_fo` decimal(38,18),
`arrival_do` decimal(38,18),
`arrival_go` decimal(38,18),
`departure_fo` decimal(38,18),
`departure_do` decimal(38,18),
`departure_go` decimal(38,18),
`etb_local` timestamp,
`call_status` string,
`port_days` decimal(38,18),
`is_cancelled` string,
`via_canal` string,
`speed` decimal(38,18),
`vessel_speed` decimal(38,18),
`miles` decimal(38,18),
`miles_c` decimal(38,18),
`miles_mod` string,
`b_l` string,
`eta_local` timestamp,
`vessel_eta` timestamp,
`vessel_eta_local` timestamp,
`etd_local` timestamp,
`vessel_etd` timestamp,
`vessel_etd_local` timestamp,
`etb` timestamp,
`etb_lock` string,
`laydays` timestamp,
`cancelling` timestamp,
`laydays_local` timestamp,
`cancelling_local` timestamp,
`dc` string,
`wait_port_days` decimal(38,18),
`idle_port_days` decimal(38,18),
`extra_port_days` decimal(38,18),
`offhire_port_days` decimal(38,18),
`sea_days` decimal(38,18),
`extra_sea_days` decimal(38,18),
`stem_ifo` decimal(38,18),
`stem_mdo` decimal(38,18),
`stem_go` decimal(38,18),
`supplied_ifo` decimal(38,18),
`supplied_mdo` decimal(38,18),
`supplied_go` decimal(38,18),
`vsl_arrival_fo` decimal(38,18),
`vsl_arrival_do` decimal(38,18),
`vsl_arrival_go` decimal(38,18),
`vsl_departure_fo` decimal(38,18),
`vsl_departure_do` decimal(38,18),
`vsl_departure_go` decimal(38,18),
`fo_cons_ballast` decimal(38,18),
`do_cons_ballast` decimal(38,18),
`fo_cons_laden` decimal(38,18),
`do_cons_laden` decimal(38,18),
`fo_cons_cargo` decimal(38,18),
`do_cons_cargo` decimal(38,18),
`fo_cons_idle` decimal(38,18),
`do_cons_idle` decimal(38,18),
`gear_working_flag` string,
`port_expenses` decimal(38,18),
`c_agents_tel` string,
`c_agents_fax` string,
`c_agents_tlx` string,
`c_agents_contact_mob_tel` string,
`subagent_tel` string,
`subagent_fax` string,
`subagent_tlx` string,
`subagent_contact_mob_tel` string,
`marine_actions` string,
`crewing_actions` string,
`accounting_actions` string,
`supplies_actions` string,
`agent_relation` string,
`remarks` string,
`publish_to_vpr` string,
`claims_notes_date` timestamp,
`claims_notes_user_id` string,
`leg_speed` decimal(38,18),
`slops_rob_unit` string,
`crew_changes` string,
`laycan_date_local` timestamp,
`cancel_date_local` timestamp,
`stem_date` timestamp,
`stem_supplier` string,
`stem_suplier_aoh_tel` string,
`stem_broker` string,
`stem_broker_aoh_tel` string,
`supplied_date` timestamp,
`invoice_date` timestamp,
`invoice_no` string,
`cargo_type` string,
`arrival_flag` string,
`terminal` string,
`cargo_grade` string,
`action_type` string,
`pob` timestamp,
`anchor_arr` timestamp,
`anchor_dep` timestamp,
`unberthed` timestamp,
`ref_id` decimal(38,18),
`invoiced_ifo` decimal(38,18),
`invoiced_mdo` decimal(38,18),
`invoiced_go` decimal(38,18),
`commission_rate` decimal(38,18),
`est_port_days` decimal(38,18),
`subvoy_no` decimal(38,18),
`seq_no` decimal(38,18),
`cargo_no` decimal(38,18),
`options_prc` decimal(38,18),
`stowage_factor` decimal(38,18),
`lift` decimal(38,18),
`max_draft` decimal(38,18),
`salinity` decimal(38,18),
`shipper` string,
`receiver` string,
`fo_cons_gear` decimal(38,18),
`do_cons_gear` decimal(38,18),
`fo_cons_not_gear` decimal(38,18),
`do_cons_not_gear` decimal(38,18),
`est_rate_unit` string,
`est_rate_close` string,
`est_extra_days` decimal(38,18),
`demurrage_rate` decimal(38,18),
`dispatch_rate` decimal(38,18),
`fo_price` decimal(38,18),
`do_price` decimal(38,18),
`go_price` decimal(38,18),
`order_code` string,
`arrival_date` timestamp,
`departure_date` timestamp,
`berthed` timestamp,
`nor` timestamp,
`co_in_storage` decimal(38,18),
`so_in_storage` decimal(38,18),
`go_in_storage` decimal(38,18),
`co_in_storage_dep` decimal(38,18),
`so_in_storage_dep` decimal(38,18),
`go_in_storage_dep` decimal(38,18),
`bp_distinroute` string,
`bp_route` string,
`fo_price_local` decimal(38,18),
`do_price_local` decimal(38,18),
`fo_do_currency_local` string,
`first_port_for_period` string,
`period_no` decimal(38,18),
`prev_voy_id` string,
`bp_routingsettings` string,
`dist_origin` string,
`psc_inspection_requested` string,
`port_modified_sap` string,
`port_modified_afsys` string,
`vsl_arrival_hsfo` decimal(38,18),
`vsl_arrival_lsfo` decimal(38,18),
`vsl_arrival_hsdo` decimal(38,18),
`vsl_arrival_lsdo` decimal(38,18),
`vsl_departure_hsfo` decimal(38,18),
`vsl_departure_lsfo` decimal(38,18),
`arrival_hsdo` decimal(38,18),
`vsl_departure_hsdo` decimal(38,18),
`vsl_departure_lsdo` decimal(38,18),
`arrival_lsfo` decimal(38,18),
`arrival_lsdo` decimal(38,18),
`arrival_hsfo` decimal(38,18),
`departure_hsfo` decimal(38,18),
`departure_lsfo` decimal(38,18),
`departure_hsdo` decimal(38,18),
`departure_lsdo` decimal(38,18),
`lsfo_sea_bss` string,
`lsdo_sea_pct` decimal(38,18),
`lsfo_sea_pct` decimal(38,18),
`lsfo_port_pct` decimal(38,18),
`lsdo_port_pct` decimal(38,18),
`lsdo_sea_bss` string,
`lsfo_port_bss` string,
`port_no` decimal(38,18),
`supplied_hsfo` decimal(38,18),
`supplied_lsfo` decimal(38,18),
`supplied_hsdo` decimal(38,18),
`supplied_lsdo` decimal(38,18),
`lsdo_port_bss` string,
`short_charter` string,
`owners_agents_email1` string,
`charterers_agents_email1` string,
`subagents_email1` string,
`surveyors_email1` string,
`owner_agent_appointed` string,
`charterer_agent_appointed` string,
`sub_agent_appointed` string,
`surveyor_contact` string,
`surveyor_contact_tel_aoh` string,
`surveyor_tel` string,
`surveyor_contact_mob_tel` string,
`surveyor_fax` string,
`surveyor_tlx` string,
`surveyor` string,
`port_action_det` string,
`commence_date` timestamp,
`commence_date_local` timestamp,
`complete_date` timestamp,
`complete_date_local` timestamp,
`draft_arr_f` decimal(38,18),
`draft_arr_a` decimal(38,18),
`draft_arr_m` decimal(38,18),
`draft_dep_f` decimal(38,18),
`draft_dep_a` decimal(38,18),
`draft_dep_m` decimal(38,18),
`vsl_arrival_water` decimal(38,18),
`vsl_departure_water` decimal(38,18),
`direction` string,
`area_service` string,
`voy_cycle` string,
`terminal_code` string,
`job_number` string,
`area_service_version` decimal(38,18),
`created_by_services` string,
`in_out` string,
`matched_with_dp_rp` string,
`port_action_det_tz` string,
`owners_agents_code_head` string,
`charterers_agents_code_head` string,
`subagent_head` string,
`surveyor_head` string,
`charterer_agent_comments` string,
`surveyor_crg` string,
`surveyor_contact_crg` string,
`surveyor_contact_tel_aoh_crg` string,
`surveyor_tel_crg` string,
`surveyor_contact_mob_tel_crg` string,
`surveyor_fax_crg` string,
`surveyor_tlx_crg` string,
`surveyor_head_crg` string,
`surveyor_oth` string,
`surveyor_contact_oth` string,
`surveyor_contact_tel_aoh_oth` string,
`surveyor_tel_oth` string,
`surveyor_contact_mob_tel_oth` string,
`surveyor_fax_oth` string,
`surveyor_tlx_oth` string,
`surveyor_head_oth` string,
`surveyors_email1_crg` string,
`surveyors_email1_oth` string,
`show_pos_own_agent` string,
`show_pos_chr_agent` string,
`show_pos_subagent` string,
`ctm_curr` string,
`ctm_local_amount` decimal(38,18),
`ctm_book_amount` decimal(38,18),
`port_name_full` string,
`berthed_gmt` timestamp,
`berthed_local` timestamp,
`unberthed_gmt` timestamp,
`unberthed_local` timestamp,
`virtual_dep` string,
`virtual_arr` string,
`other_head` string,
`other_contact` string,
`other_contact_tel_aoh` string,
`other_tel` string,
`other_contact_mob_tel` string,
`other_fax` string,
`other_tlx` string,
`other_email1` string,
`other_appointed` string,
`other_agent` string,
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
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_expected_call' TBLPROPERTIES ('transactional'='false');


create table  epsdlsrip.sri_ports_library
(
`port_name` string,
`port_country` string,
`bp_code` string,
`port_lon` string,
`port_lat` string,
`port_lon_x` double,
`port_lat_y` double,
`port_danaos_id` double,
`port_zone` string,
`crew_change` string,
`port_id` string,
`gmt` decimal(38,18),
`area` string,
`oceanic_area` string,
`lat_deg` decimal(38,18),
`lat_min` decimal(38,18),
`lat_ns` string,
`lon_deg` decimal(38,18),
`lon_min` decimal(38,18),
`lon_ew` string,
`sync_flag` string,
`war_risks` string,
`portset_name` string,
`slop_facilities` decimal(38,18),
`stores` decimal(38,18),
`fresh_water` decimal(38,18),
`lube_oil` decimal(38,18),
`reference_port` string,
`current_price` decimal(38,18),
`absolute_diff` decimal(38,18),
`preferred_agent` string,
`draft` decimal(38,18),
`beam` decimal(38,18),
`loa` decimal(38,18),
`deadweight` decimal(38,18),
`slabside` decimal(38,18),
`transit_in_time` decimal(38,18),
`transit_out_time` decimal(38,18),
`country_id` decimal(38,18),
`port_code` string,
`port_un_code` string,
`ch_preferred_agent` string,
`integration_key` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` timestamp,
`w_location` string,
`w_batch_id` bigint
) using delta
partitioned by  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  location '/mnt/epsdldeltaprod/epsdlsrip/sri_ports_library' tblproperties ('transactional'='false');


create table  epsdlsrip.sri_bp_ports
(
`port_code` string,
`port_name` string,
`port_country` string,
`unctad_code` string,
`latitude` string,
`longitude` string,
`latitude_num` decimal(38,18),
`longitude_num` decimal(38,18),
`port_tables` string,
`alias_port` string,
`bp_sequence` decimal(38,18),
`draft` decimal(38,18),
`alias_flag` string,
`alias_index` decimal(38,18),
`short_port_name` string,
`short_country_name` string,
`short_alias_port` string,
`port_country_code` string,
`nondistance_flag` string,
`nearest_port_code` string,
`nearest_port_name` string,
`nearest_unctad_code` string,
`old_bp_version` string,
`integration_key` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` timestamp,
`w_location` string,
`w_batch_id` bigint
) using delta
partitioned by  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  location '/mnt/epsdldeltaprod/epsdlsrip/sri_bp_ports' tblproperties ('transactional'='false');



CREATE TABLE  epsdlsrip.sri_telegrams
(
`vessel_code` string,
`telegram_date` timestamp,
`telegram_type` string,
`port_name` string,
`longitude_degrees` double,
`longitude_seconds` double,
`longitude_n_s` string,
`latitude_degrees` double,
`latitude_seconds` double,
`latitude_e_w` string,
`gmt_difference` timestamp,
`gmt_plus` string,
`fo_rob` double,
`fo_log` double,
`do_rob` double,
`do_log` double,
`gas_oil_rob` double,
`gas_oil_log` double,
`fo_meter_indication` double,
`do_meter_indication` double,
`boiller_meter` double,
`co_in_use` double,
`co_in_storage` double,
`so_in_use` double,
`so_in_storage` double,
`go_in_use` double,
`go_in_storage` double,
`draft_fore` double,
`draft_aft` double,
`engine_rpm` double,
`tc_rpm` double,
`fuel_rack` double,
`propeller_pitch` double,
`miles_slc` double,
`hours_slc` double,
`minutes_slc` double,
`wind_direction` double,
`wind_force` double,
`sea_direction` double,
`sea_force` double,
`current_direction` double,
`current_speed` double,
`swell_direction` double,
`swell_force` double,
`vessel_course` double,
`generators_kw_shaft` double,
`generators_kw_diesel` double,
`cargo_total` double,
`cargo_volume` double,
`balast_flag` string,
`timecharter_flag` string,
`supplied_fo` double,
`supplied_do` double,
`supplied_gas_oil` double,
`supplied_co` double,
`supplied_so` double,
`supplied_go` double,
`fresh_water_rob` double,
`fresh_water_bunkered` double,
`port_static_time` double,
`maneouvering_time` string,
`maneouvering_miles` double,
`consumption_fo_static` double,
`consumption_fo_man` double,
`consumption_do_static` double,
`consumption_do_man` double,
`consumption_gas_oil_static` double,
`consumption_gas_oil_man` double,
`next_port` string,
`eta_next_port` timestamp,
`master_name` string,
`chief_eng_name` string,
`remarks_position` string,
`miles_to_port` double,
`message` string,
`lon_r` double,
`lat_r` double,
`fw_boiler_cons` double,
`cargo_name_1` string,
`cargo_temperature_1` double,
`temp_scal_1` string,
`cargo_name_2` string,
`cargo_temperature_2` double,
`temp_scal_2` string,
`heating_fo_cons` double,
`heating_do_cons` double,
`heating_go_cons` double,
`local_time_est` timestamp,
`cargo_type` string,
`ballast_qty_mtn` double,
`average_speed` double,
`engine_miles` double,
`average_me_cons` double,
`slow_steaming_reason` string,
`slow_steaming_hours` double,
`slow_steaming_min` double,
`slow_steaming_me_cons` double,
`stoppages_hours` double,
`stoppages_min` double,
`stoppages_reason` string,
`slow_steaming_miles` double,
`draft_mid` double,
`engine_2_rpm` double,
`tc_rpm_2` double,
`tc_rpm_3` double,
`tc_rpm_4` double,
`me_exch_gas_min` double,
`me_exch_gas_max` double,
`me_scav_air_pres` double,
`me_load_ind` double,
`slip_factor` double,
`me_fo_cons` double,
`do_cons` double,
`boiler_cons_fo` double,
`boiler_cons_do` double,
`turbo_gen_kw` double,
`diesel_gen_no` double,
`dw_production` double,
`dw_consumption` double,
`dw_rob` double,
`sea_temperature` double,
`shifting_miles` double,
`shifting_cons_fo` double,
`shifting_cons_do` double,
`shifting_timehours` double,
`et_berthing` timestamp,
`h_oil_rob` double,
`h_oil_supplied` double,
`gmt_time_zone` double,
`fw_produced` double,
`loaded_cargo_mt` double,
`disch_cargo` double,
`ship_fig_agreed` string,
`cash_to_master` double,
`cash_cur` string,
`scav_air_temp` double,
`port_air_cooler_pres_drop` double,
`stbd_air_cooler_pres_drop` double,
`outdoor_temp` double,
`next_port_action` string,
`free_text` string,
`ae_cons_fo` double,
`ae_cons_do` double,
`port_days` double,
`voy` string,
`sub_voy_no` string,
`exp_ref` timestamp,
`setl_tank` double,
`adverse_current` string,
`indicated_speed` string,
`dg_cons_do` double,
`eop_fo_rob` double,
`eop_lsfo_rob` double,
`eop_do_rob` double,
`eop_go_rob` double,
`supplied_ifo` double,
`supplied_hfo` double,
`hsfo_rob` double,
`lsfo_rob` double,
`hsdo_rob` double,
`lsdo_rob` double,
`supplied_hsfo_rob` double,
`supplied_lsfo_rob` double,
`supplied_hsdo_rob` double,
`supplied_lsdo_rob` double,
`me_hsfo_cons` double,
`me_lsfo_cons` double,
`me_hsdo_cons` double,
`me_lsdo_cons` double,
`ae_hsfo_cons` double,
`ae_lsfo_cons` double,
`ae_hsdo_cons` double,
`ae_lsdo_cons` double,
`boiler_hsfo_cons` double,
`boiler_lsfo_cons` double,
`boiler_hsdo_cons` double,
`boiler_lsdo_cons` double,
`me_fo_consumption` double,
`me_do_consumption` double,
`ae_fo_consumption` double,
`ae_do_consumption` double,
`boiler_fo_consumption` double,
`boiler_do_consumption` double,
`sent_status` string,
`nor_anchored` timestamp,
`sludge_land` double,
`lo_press_before_filter` double,
`lo_press_after_filter` double,
`me_exch_gas_min_2` double,
`me_exch_gas_min_3` double,
`me_exch_gas_min_4` double,
`me_exch_gas_min_5` double,
`me_exch_gas_min_6` double,
`me_exch_gas_min_7` double,
`me_exch_gas_min_8` double,
`me_exch_gas_max_2` double,
`me_exch_gas_max_3` double,
`me_exch_gas_max_4` double,
`me_exch_gas_max_5` double,
`me_exch_gas_max_6` double,
`me_exch_gas_max_7` double,
`me_exch_gas_max_8` double,
`me_ifo_cons` double,
`me_port` double,
`me_stbd` double,
`berthed` timestamp,
`ifo_rob` double,
`con_ae_stbd_fwd_cyl` double,
`con_ae_stbd_fwd_sys` double,
`con_ae_stbd_fwd_ae` double,
`con_ae_stbd_ctr_cyl` double,
`con_ae_stbd_ctr_sys` double,
`con_ae_stbd_ctr_ae` double,
`con_ae_stbd_aft` double,
`con_ae_port_aft` double,
`present_speed` double,
`miles_slc_log` double,
`hours_slc_log` double,
`minutes_slc_log` double,
`losses_mdo` double,
`losses_hfo` double,
`me_ctr` double,
`agent` string,
`nr_of_tugs` double,
`anchored` timestamp,
`cargo_doc_ob` timestamp,
`maneuvering_time` double,
`cargo_gear_working` double,
`dg1_hours` double,
`dg1_kw` double,
`dg2_hours` double,
`dg2_kw` double,
`dg3_hours` double,
`dg3_kw` double,
`dg4_hours` double,
`dg4_kw` double,
`sg_hours` double,
`sg_kw` double,
`con_ae_port_fwd` double,
`con_ae_port_ctr` double,
`ae_total_ifo` double,
`ae_total_hfo` double,
`src_filename` string,
`src_fullfilepath` string,
`src_fulldirname` string,
`src_reldirname` string,
`integration_key` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` timestamp,
`w_location` string,
`w_batch_id` bigint
) using delta
partitioned by  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_telegrams' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrip.sri_telegrams_custom
(
`vessel_code` string,
`telegram_date` timestamp,
`telegram_type` string,
`hbn_co_in_storage` double,
`lbn_co_in_storage` double,
`supplied_hbn_co` double,
`supplied_lbn_co` double,
`oil_bilge` double,
`fw_consumed` double,
`supplied_hsfo_port` double,
`supplied_lsfo_port` double,
`supplied_fo_port` double,
`supplied_hsdo_port` double,
`supplied_lsdo_port` double,
`supplied_do_port` double,
`supplied_mgo_port` double,
`supplied_hbn_co_port` double,
`supplied_lbn_co_port` double,
`supplied_co_port` double,
`supplied_so_port` double,
`supplied_go_port` double,
`me_hsfo_port` double,
`me_lsfo_port` double,
`me_hsdo_port` double,
`me_lsdo_port` double,
`ae_hsfo_port` double,
`ae_lsfo_port` double,
`ae_hsdo_port` double,
`ae_lsdo_port` double,
`boiler_hsfo_port` double,
`boiler_lsfo_port` double,
`boiler_hsdo_port` double,
`boiler_lsdo_port` double,
`cargo_onboard` double,
`port_or_location` string,
`fuel_s` double,
`creation_user` string,
`creation_date` timestamp,
`last_user` string,
`last_date` timestamp,
`created_onboard` string,
`me_horse_power` double,
`me_cnt_indic` double,
`hsfo_fuel_s` double,
`lsfo_fuel_s` double,
`hsdo_fuel_s` double,
`lsdo_fuel_s` double,
`hsgo_fuel_s` double,
`lsgo_fuel_s` double,
`nor` timestamp,
`instructed_speed` double,
`required_speed` double,
`wind_rel_dir` string,
`current_rel_dir` string,
`via_port` string,
`miles_to_via_port` double,
`eta_via_port` timestamp,
`cp_me_fo_cons` double,
`cp_fo_cons` double,
`cp_do_cons` double,
`boiler_water_rob` double,
`ball_hsfo_cons` double,
`ball_lsfo_cons` double,
`ball_hsdo_cons` double,
`ball_lsdo_cons` double,
`deball_hsfo_cons` double,
`deball_lsfo_cons` double,
`deball_hsdo_cons` double,
`deball_lsdo_cons` double,
`heat_hsfo_cons` double,
`heat_lsfo_cons` double,
`heat_hsdo_cons` double,
`heat_lsdo_cons` double,
`clean_hsfo_cons` double,
`clean_lsfo_cons` double,
`clean_hsdo_cons` double,
`clean_lsdo_cons` double,
`tg_hsfo_cons` double,
`tg_lsfo_cons` double,
`tg_hsdo_cons` double,
`tg_lsdo_cons` double,
`ball_hsfo_port` double,
`ball_lsfo_port` double,
`ball_hsdo_port` double,
`ball_lsdo_port` double,
`deball_hsfo_port` double,
`deball_lsfo_port` double,
`deball_hsdo_port` double,
`deball_lsdo_port` double,
`heat_hsfo_port` double,
`heat_lsfo_port` double,
`heat_hsdo_port` double,
`heat_lsdo_port` double,
`clean_hsfo_port` double,
`clean_lsfo_port` double,
`clean_hsdo_port` double,
`clean_lsdo_port` double,
`tg_hsfo_port` double,
`tg_lsfo_port` double,
`tg_hsdo_port` double,
`tg_lsdo_port` double,
`engine_parms` string,
`disch_hsfo_cons` double,
`disch_lsfo_cons` double,
`disch_hsdo_cons` double,
`disch_lsdo_cons` double,
`load_hsfo_cons` double,
`load_lsfo_cons` double,
`load_hsdo_cons` double,
`load_lsdo_cons` double,
`idle_hsfo_cons` double,
`idle_lsfo_cons` double,
`idle_hsdo_cons` double,
`idle_lsdo_cons` double,
`maneuv_hsfo_cons` double,
`maneuv_lsfo_cons` double,
`maneuv_hsdo_cons` double,
`maneuv_lsdo_cons` double,
`disch_hsfo_port` double,
`disch_lsfo_port` double,
`disch_hsdo_port` double,
`disch_lsdo_port` double,
`load_hsfo_port` double,
`load_lsfo_port` double,
`load_hsdo_port` double,
`load_lsdo_port` double,
`idle_hsfo_port` double,
`idle_lsfo_port` double,
`idle_hsdo_port` double,
`idle_lsdo_port` double,
`maneuv_hsfo_port` double,
`maneuv_lsfo_port` double,
`maneuv_hsdo_port` double,
`maneuv_lsdo_port` double,
`ball_hrs` double,
`heat_hrs` double,
`disch_hrs` double,
`load_hrs` double,
`idle_hrs` double,
`maneuv_hrs` double,
`hbn_co_cons` double,
`lbn_co_cons` double,
`co_cons` double,
`so_cons` double,
`go_cons` double,
`port_name_full` string,
`approved` string,
`max_temp_tc_in_2` double,
`max_temp_tc_out_2` double,
`remarks_office` string,
`eca_area` string,
`berth_unberth` string,
`sts_operations` string,
`port_action` string,
`hsgo_rob` double,
`lsgo_rob` double,
`supplied_hsgo_rob` double,
`supplied_lsgo_rob` double,
`supplied_hsgo_port` double,
`supplied_lsgo_port` double,
`hsfo_bdn_no` string,
`lsfo_bdn_no` string,
`hsdo_bdn_no` string,
`lsdo_bdn_no` string,
`hsfo_bdn_date` timestamp,
`lsfo_bdn_date` timestamp,
`hsdo_bdn_date` timestamp,
`lsdo_bdn_date` timestamp,
`next_port_gmt_offset` double,
`src_filename` string,
`src_fullfilepath` string,
`src_fulldirname` string,
`src_reldirname` string,
`integration_key` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` timestamp,
`w_location` string,
`w_batch_id` bigint
) using delta
partitioned by  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_telegrams_custom' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrip.sri_companies
(
`child_value` string,
`description` string,
`le` string,
`danaos_co_code` string,
`databasename` string,
`integration_key` string,
`w_source_system` string,
`w_src_file_name` string,
`w_refresh_ts` timestamp,
`w_job_instance_id` string,
`w_business_dt` timestamp,
`w_location` string,
`w_batch_id` bigint
) using delta
partitioned by  (
`w_business_dt`,
`w_source_system`,
`w_location`,
`w_batch_id`
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_companies' TBLPROPERTIES ('transactional'='false');


CREATE TABLE  epsdlsrip.sri_intercompany
(
 `ledger_code` string,
 `name` string,
 `source_system` string,
 `ledger_type` string,
 `oracle_coa_code` string,
 `oracle_coa_description` string,
 `intercompany_code` string,
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
)  LOCATION '/mnt/epsdldeltaprod/epsdlsrip/sri_intercompany' TBLPROPERTIES ('transactional'='false');