CREATE TABLE epsdld.dim_incident_categories
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
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_incident_categories' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_inspection
(
`qq_id` decimal(38,18),
`qqc_id` decimal(38,18),
`question_id` decimal(38,18),
`description` string,
`details` string,
`serial_no` string,
`category_id` decimal(38,18),
`category_name` string,
`department` decimal(38,18),
`chapter_no` string,
`chapter` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_inspection' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_sire_inspection
(
`question_number` string,
`chapter` string,
`chapter_no` string,
`section_header` string,
`section_sub_header` string,
`question_text` string,
`flag` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_sire_inspection' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_inspection_observation
(
 `id` decimal(38,18),
 `job_code` string,
 `details` string,
 `inspection_id` decimal(38,18),
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
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_inspection_observation' TBLPROPERTIES ('transactional'='false');


CREATE TABLE epsdld.dim_chapter
(
 `chapter` string,
 `chapter_number` string,
 `flag` string,
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
) LOCATION '/mnt/epsdldeltadev/epsdld/dim_chapter' TBLPROPERTIES ('transactional'='false');