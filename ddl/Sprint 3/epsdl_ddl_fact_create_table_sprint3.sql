
CREATE TABLE epsdld.fact_incident_report
(
`id` double,
`vessel_code` string,
`incident_place_id` double,
`incident_date` timestamp,
`incident_time` string,
`incident_location_id` string,
`incident_risk_factor_id` string,
`incident_title` string,
`incident_type` string,
`incident_ref_no` string,
`primary_cat_id` double,
`sec_cat_id` double,
`minor_cat_id` double,
`vessel_movement` string,
`sea_condition` string,
`weather_condition` string,
`course_of_events` string,
`extent_of_damage` string,
`immediate_actions` string,
`immeditae_causes` string,
`underlying_causes` string,
`root_causes` string,
`lessons_learnt` string,
`master_sign` double,
`chief_engineer_sign` double,
`chief_officer_sign` double,
`assistant_engineer_sign` double,
`sub_cat_id` double,
`omodified_date` timestamp,
`is_closed` double,
`vmodified_date` timestamp,
`is_finalised` double,
`is_office_finalised` double,
`questionair_completed` double,
`master_staff_code` double,
`chief_engineer_staff_code` double,
`chief_officer_staff_code` double,
`assistant_engineer_staff_code` double,
`hasworkflow` double,
`identified_by` string,
`breach` double,
`vessel_id` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/fact_incident_report' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.fact_inspection
(
`inspection_id` decimal(38,18) ,
`iiq_id` decimal(38,18) ,
`qq_id` decimal(38,18) ,
`question_id` decimal(38,18) ,
`qqc_id` decimal(38,18) ,
`insp_category_id` decimal(38,18) ,
`template_id` decimal(38,18) ,
`vessel_code` string ,
`date_done` timestamp ,
`file_name` string ,
`port` string , 
`status` string,
`insp_answer_id` decimal(38,18),
`template_name` string ,
`vessel_id` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/fact_inspection' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.fact_sire_inspection
(
`audit_id` decimal(38,18) ,
`req_id` string,
`insp_status` string ,
`vessel_code` string ,
`moc_id` decimal(38,18) ,
`audit_date` timestamp ,
`type` string,
`flag` string,
`deficiency_id` decimal(38,18) ,
`question_number` string , 
`observation` string,
`reply` string,
`deficiency_status` string,
`risk_factor` string,
`vessel_id` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/fact_sire_inspection' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.fact_nav_audit
(
`audit_id` string,
`created_by` string,
`vessel_code` string,
`FLEET_TYPE` string,
`TO_DATE` date,
`Vessel_name` string,
`Q_NO` string,
`Q_type` string,
`category` string,
`NAV_FLAG` int,
`audit_vessel` string,
`Q_CATEGORY` string,
`trim_Q_CATEGORY` string,
`Q_ANSWER` string,
`Q_TEXT` string,
`Q_REFERENCE` string,
`TECH_MANAGER` string,
`sailing_port_flag` string,
`c11` string,
`vessel_id` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/fact_nav_audit' TBLPROPERTIES ('transactional'='false');