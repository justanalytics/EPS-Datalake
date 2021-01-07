CREATE TABLE epsdlsrid.sri_incident_report
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_incident_report' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_incident_categories
(
 `category_id` double,
 `category_name` string,
 `parent_id` double,
 `created_by` string,
 `created_date` timestamp,
 `modified_by` string,
 `modified_date` timestamp,
 `category_type` double,
 `consequence` string,
 `incident_type` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_incident_categories' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_insp_answer
(
 `id` decimal(38,18),
 `description` string,
 `created_by` string,
 `created_date` timestamp,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_answer' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_insp_category
(
 `id` decimal(38,18),
 `category_name` string,
 `created_by` string,
 `created_date` timestamp,
 `modified_by` string,
 `modified_date` timestamp,
 `serial_no` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_category' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_insp_inspection
(
 `id` decimal(38,18),
 `template_id` decimal(38,18),
 `vessel_code` string,
 `date_done` timestamp,
 `audit_year` decimal(38,18),
 `created_by` string,
 `created_date` timestamp,
 `modified_by` string,
 `modified_date` timestamp,
 `status` string,
 `file_name` string,
 `finalized_date` timestamp,
 `port` string,
 `is_sailing_audit` decimal(38,18),
 `work_list_status` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_inspection' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_insp_inspection_questionnaire
(
 `id` decimal(38,18),
 `insp_questionnaire_question_id` decimal(38,18),
 `insp_answer_id` decimal(38,18),
 `comments` string,
 `inspection_id` decimal(38,18),
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_inspection_questionnaire' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_insp_question
(
 `id` decimal(38,18),
 `description` string,
 `details` string,
 `created_by` string,
 `created_date` timestamp,
 `modified_by` string,
 `modified_date` timestamp,
 `serial_no` string,
 `answer_list` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_question' TBLPROPERTIES ('transactional'='false');



CREATE TABLE epsdlsrid.sri_insp_questionnaire_category
(
 `id` decimal(38,18),
 `questionnaire_id` decimal(38,18),
 `category_id` decimal(38,18),
 `ordr` decimal(38,18),
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_questionnaire_category' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_insp_questionnaire_question
(
 `id` decimal(38,18),
 `questionnaire_category_id` decimal(38,18),
 `question_id` decimal(38,18),
 `ordr` decimal(38,18),
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_questionnaire_question' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_insp_templates
(
 `id` decimal(38,18),
 `name` string,
 `description` string,
 `department` decimal(38,18),
 `questionnaire_id` decimal(38,18),
 `has_non_conformities` string,
 `has_observations` string,
 `has_crewlist` string,
 `created_by` string,
 `created_date` timestamp,
 `modified_by` string,
 `modified_date` timestamp,
 `periodicity` double,
 `include_in_planner` double,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_templates' TBLPROPERTIES ('transactional'='false');



CREATE TABLE epsdlsrid.sri_moc_deficiencies
(
 `deficiency_id` decimal(38,18),
 `request_id` decimal(38,18),
 `section` string,
 `deficiency` string,
 `reply` string,
 `status` string,
 `sort_order` decimal(38,18),
 `create_date` timestamp,
 `created_by` string,
 `last_modified_by` string,
 `last_modified_date` timestamp,
 `risk_factor` string,
 `wls_job_list_id` double,
 `action_code` string,
 `action_description` string,
 `viq_dont_count` double,
 `wls_job_code` double,
 `vessel_code` string,
 `cause` string,
 `corrective_action` string,
 `preventive_action` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_moc_deficiencies' TBLPROPERTIES ('transactional'='false');



CREATE TABLE epsdlsrid.sri_moc_inspection_requests
(
 `request_id` decimal(38,18),
 `insp_status` string,
 `vessel_code` string,
 `moc_id` decimal(38,18),
 `inspection_port` string,
 `inspection_date` timestamp,
 `operation` string,
 `agent_id` decimal(38,18),
 `inspector_id` decimal(38,18),
 `request_date` timestamp,
 `confirmed_or_rejected` string,
 `date_confirm_reject` timestamp,
 `deficiency_recd` string,
 `sire_recd_date` timestamp,
 `date_replied_to_sire` timestamp,
 `date_accepted` timestamp,
 `expiry_date` timestamp,
 `expences` decimal(38,18),
 `expences_in_usd` decimal(38,18),
 `suptd_attended` string,
 `combined` string,
 `basis_sire` decimal(38,18),
 `vessel_advised_date` timestamp,
 `office_advised_date` timestamp,
 `agent_advised_date` timestamp,
 `date_defs_to_vessel` timestamp,
 `date_defs_replied` timestamp,
 `date_sire_to_vessel` timestamp,
 `tech_alerted` string,
 `tech_alert_date` timestamp,
 `tech_dept_replied` string,
 `tech_reply_date` timestamp,
 `tech_declined_reason` string,
 `tech_status` string,
 `tech_pic` string,
 `create_date` timestamp,
 `created_by` string,
 `last_modified_date` timestamp,
 `last_modified_by` string,
 `local_currency` string,
 `status` string,
 `insp_type` string,
 `ocimf_report_number` string,
 `agent` string,
 `moc` string,
 `basis_sire_moc` string,
 `inspection_remarks` string,
 `inspection_grade` decimal(38,18),
 `po_number` string,
 `detention` string,
 `is_sire` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_moc_inspection_requests' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_moc_viq_questions
(
 `question_number` string,
 `chapter` string,
 `section_header` string,
 `section_sub_header` string,
 `question_text` string,
 `sort_order` double,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_moc_viq_questions' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_insp_questionnaire
(
 `id` decimal(38,18),
 `name` string,
 `department` decimal(38,18),
 `created_by` string,
 `created_date` timestamp,
 `modified_by` string,
 `modified_date` timestamp,
 `description` string,
 `active` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_questionnaire' TBLPROPERTIES ('transactional'='false');



CREATE TABLE epsdlsrid.sri_insp_inspection_observation
(
  `id` decimal(38,18),
 `job_code` string,
 `details` string,
 `inspection_id` decimal(38,18),
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_insp_inspection_observation' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_nav_audit_off_main
(
 `audit_id` double,
 `vessel_code` string,
 `vessel_position` string,
 `created_by` string,
 `created_date` timestamp,
 `from_date` timestamp,
 `to_date` timestamp,
 `executive_summary` string,
 `master_name` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_nav_audit_off_main' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_nav_audit_vsl_main
(
 `audit_id` double,
 `vessel_code` string,
 `vessel_position` string,
 `created_by` string,
 `created_date` timestamp,
 `from_date` timestamp,
 `to_date` timestamp,
 `executive_summary` string,
 `master_name` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_nav_audit_vsl_main' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_nav_audit_off_answers
(
 `audit_id` double,
 `vessel_code` string,
 `q_no` double,
 `q_type` string,
 `q_answer` string,
 `q_remarks` string,
 `created_by` string,
 `created_date` timestamp,
 `modified_by` string,
 `modified_date` timestamp,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_nav_audit_off_answers' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_nav_audit_vsl_answers
(
 `audit_id` double,
 `vessel_code` string,
 `q_no` double,
 `q_type` string,
 `q_answer` string,
 `q_remarks` string,
 `created_by` string,
 `created_date` timestamp,
 `modified_by` string,
 `modified_date` timestamp,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_nav_audit_vsl_answers' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdlsrid.sri_nav_audit_qn_master
(
 `q_no` double,
 `q_text` string,
 `q_options` double,
 `q_type` string,
 `q_active` string,
 `q_sort_no` string,
 `q_category` string,
 `q_cat_sort_no` timestamp,
 `q_reference` string,
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
)  LOCATION '/mnt/epsdldeltadev/epsdlsrid/sri_nav_audit_qn_master' TBLPROPERTIES ('transactional'='false');