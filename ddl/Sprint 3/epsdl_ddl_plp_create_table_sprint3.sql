CREATE TABLE epsdlplp.dim_incident_categories
(
category_id decimal(38,18),
category_name varchar(1000),
parent_id decimal(38,18),
created_by varchar(1000),
created_date datetime,
modified_by varchar(1000),
modified_date datetime,
category_type decimal(38,18),
consequence varchar(1000),
incident_type varchar(1000),
integration_key varchar(1000),
w_batch_id decimal(38,18) ,
business_date datetime ,
w_data_src_id varchar(1000),
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
);


CREATE TABLE epsdlplp.fact_incident_report
(
id decimal(38,18),
vessel_code varchar(1000),
incident_place_id decimal(38,18),
incident_date datetime,
incident_time varchar(1000),
incident_location_id varchar(1000),
incident_risk_factor_id varchar(1000),
incident_title varchar(1000),
incident_type varchar(1000),
incident_ref_no varchar(1000),
primary_cat_id decimal(38,18),
sec_cat_id decimal(38,18),
minor_cat_id decimal(38,18),
vessel_movement varchar(1000),
sea_condition varchar(1000),
weather_condition varchar(1000),
course_of_events varchar(1000),
extent_of_damage varchar(1000),
immediate_actions varchar(1000),
immeditae_causes varchar(1000),
underlying_causes varchar(1000),
root_causes varchar(1000),
lessons_learnt varchar(1000),
master_sign decimal(38,18),
chief_engineer_sign decimal(38,18),
chief_officer_sign decimal(38,18),
assistant_engineer_sign decimal(38,18),
sub_cat_id decimal(38,18),
omodified_date datetime,
is_closed decimal(38,18),
vmodified_date datetime,
is_finalised decimal(38,18),
is_office_finalised decimal(38,18),
questionair_completed decimal(38,18),
master_staff_code decimal(38,18),
chief_engineer_staff_code decimal(38,18),
chief_officer_staff_code decimal(38,18),
assistant_engineer_staff_code decimal(38,18),
hasworkflow decimal(38,18),
identified_by varchar(1000),
breach decimal(38,18),
vessel_id varchar(1000),
integration_key varchar(1000),
w_batch_id decimal(38,18) ,
business_date datetime ,
w_data_src_id varchar(1000) ,
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
);


CREATE TABLE epsdlplp.dim_inspection
(
qq_id decimal(38,18),
qqc_id decimal(38,18),
question_id decimal(38,18),
description varchar(1000),
details varchar(1000),
serial_no varchar(1000),
category_id decimal(38,18),
category_name varchar(1000),
department decimal(38,18),
chapter_no varchar(1000),
chapter varchar(1000),
integration_key varchar(1000),
w_batch_id decimal(38,18) ,
business_date datetime ,
w_data_src_id varchar(1000),
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
);


CREATE TABLE epsdlplp.fact_inspection
(
inspection_id decimal(38,18) ,
iiq_id decimal(38,18) ,
qq_id decimal(38,18) ,
question_id decimal(38,18) ,
qqc_id decimal(38,18) ,
insp_category_id decimal(38,18) ,
template_id decimal(38,18) ,
vessel_code varchar(1000) ,
date_done datetime ,
file_name varchar(1000) ,
port varchar(1000) , 
status varchar(1000),
insp_answer_id decimal(38,18),
template_name varchar(1000) ,
vessel_id varchar(1000),
integration_key varchar(1000),
w_batch_id decimal(38,18) ,
business_date datetime ,
w_data_src_id varchar(1000) ,
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
);


CREATE TABLE epsdlplp.dim_sire_inspection
(
question_number varchar(1000),
chapter varchar(1000),
chapter_no varchar(1000),
section_header varchar(1000),
section_sub_header varchar(1000),
question_text varchar(1000),
flag varchar(1000),
integration_key varchar(1000),
w_batch_id decimal(38,18) ,
business_date datetime ,
w_data_src_id varchar(1000),
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
);



CREATE TABLE epsdlplp.fact_sire_inspection
(
audit_id decimal(38,18) ,
req_id varchar(1000),
insp_status varchar(1000) ,
vessel_code varchar(1000) ,
moc_id decimal(38,18) ,
audit_date datetime ,
type varchar(1000),
flag varchar(1000),
deficiency_id decimal(38,18) ,
question_number varchar(1000) , 
observation varchar(1000),
reply varchar(1000),
deficiency_status varchar(1000),
risk_factor varchar(1000),
vessel_id varchar(1000),
integration_key varchar(1000),
w_batch_id decimal(38,18) ,
business_date datetime ,
w_data_src_id varchar(1000) ,
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
);



CREATE TABLE epsdlplp.dim_inspection_observation
(
id decimal(38,18),
job_code varchar(1000),
details varchar(1000),
inspection_id decimal(38,18),
integration_key varchar(1000),
w_batch_id decimal(38,18) ,
business_date datetime ,
w_data_src_id varchar(1000),
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
);


CREATE TABLE epsdlplp.dim_chapter
(
chapter varchar(1000),
chapter_number varchar(1000),
flag varchar(1000),
integration_key varchar(1000),
w_batch_id decimal(38,18) ,
business_date datetime ,
w_data_src_id varchar(1000),
w_refresh_ts datetime ,
w_x_custom varchar(1000),
w_job_instance_id int ,
w_curr_rec_flg varchar(1000),
w_location varchar(1000)
);