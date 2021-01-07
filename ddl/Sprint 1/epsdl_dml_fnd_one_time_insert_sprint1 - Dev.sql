
insert into epsdld.dim_gl_account
--(
--oracle_natural_account,
--ledger_card,
--description
--parent1_code,
--parent1_description,
--parent2_code,
--parent2_description,
--parent3_code,
--parent3_description,
--parent4_code,
--parent4_description,
--parent5_code,
--parent5_description,
--financial_category,
--financial_sub_category,
--danaos_name,
--danaos_description_details,
--danaos_description_sub,
--danaos_description_main,
--source_system,
--integration_key,
--account_id,
--w_batch_id,
--business_date,
--w_data_src_id,
--w_refresh_ts,
--w_x_custom,
--w_job_instance_id,
--w_curr_rec_flg,
--w_location,
-- )
values
(
'000000',
'000000',
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
'default',
null,
null,
null,
'default',
'000000',
'000000',
null,
null,
null,
null,
null,
null,
null,
null
);



insert into epsdld.dim_gl_reporting_lines
-- (
-- oracle_natural_account,
-- account_group,
-- acct_grouping_level4,
-- acct_grouping_level3,
-- acct_grouping_level2,
-- acct_grouping_level1,
-- ledger_card,
-- danaos_name,
-- source_system
-- integration_key,
-- account_id,
-- w_batch_id,
-- business_date,
-- w_data_src_id,
-- w_refresh_ts,
-- w_x_custom,
-- w_job_instance_id,
-- w_curr_rec_flg,
-- w_location,
-- )
values
(
'000000',
null,
null,
null,
null,
null,
'000000',
'default',
'default',
'000000',
'000000',
null,
null,
null,
null,
null,
null,
null,
null
);



insert into epsdld.dim_gl_company
-- (
-- child_value,
-- child_description,
-- parent1,
-- parent1_description,
-- parent2,
-- parent2_description,
-- parent3,
-- parent3_descriptin,
-- parent4,
-- parent4_description,
-- parent5,
-- parent5_description,
-- parent6,
-- parent6_description,
-- parent7,
-- parent7_description,
-- parent8,
-- parent8_description,
-- parent9,
-- parent9_description,
-- le,
-- danaos_co_code,
-- database,
-- company,
-- short_name,
-- name,
-- managed_by,
-- company_group,
-- chart,
-- company_type,
-- base_currency,
-- remarks,
-- group_flag_1,
-- group_flag_2,
-- official_currency,
-- global_vessel_id,
-- create_intercompanies,
-- is_filing,
-- active_flag,
-- company_level,
-- bank_ledger,
-- group_details_from,
-- group_details_to,
-- tonnage_tax_from,
-- tonnage_tax_to,
-- vat_group_from,
-- vat_group_to,
-- incexp_managed_by,
-- integration_key,
-- company_id,
-- w_batch_id,
-- business_date,
-- w_data_src_id,
-- w_refresh_ts,
-- w_x_custom,
-- w_job_instance_id,
-- w_curr_rec_flg,
-- w_location,
-- )
values
(
'0000',
'default',
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
'default',
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
'0000',
'0000',
null,
null,
null,
null,
null,
null,
null,
null
);


insert into epsdld.dim_gl_vessel
-- (
-- addl_attribute1,
-- addl_attribute2,
-- addl_attribute3,
-- built,
-- company_structure_in_danaos,
-- date_built,
-- dwt,
-- eps_ownership,
-- eps_uk_ownership,
-- fleet_type,
-- fleet_type_code,
-- fleet_type_sort,
-- fleet_type_sub_code,
-- fleet_type_sub,
-- fleet_code,
-- fleet,
-- owning_entity,
-- owning_entity_codes,
-- ownership,
-- vessel_type,
-- vessel_group,
-- built_year,
-- vessel_class,
-- journal_end_date,
-- journal_start_date,
-- last_updated_by,
-- last_updated_date,
-- lwt,
-- managed_by_eps,
-- ownership_type,
-- period,
-- qct_ownership,
-- qct_start_date,
-- qps_ownership,
-- sold_date,
-- start_date,
-- useful_life,
-- vessel_code,
-- vessel_name,
-- vessel_ownership,
-- region,
-- integration_key,
-- vessel_id,
-- include_in_drc
-- w_batch_id,
-- business_date,
-- w_data_src_id,
-- w_refresh_ts,
-- w_x_custom,
-- w_job_instance_id,
-- w_curr_rec_flg,
-- w_location
-- )
values
(
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
'0000',
'default',
null,
null,
'0000',
'0000',
0,
null,
null,
null,
null,
null,
null,
null,
null
);

insert into epsdld.dim_gl_service
-- (
-- service_code,
-- service_description,
-- parent1_code,
-- parent1_description,
-- parent2_code,
-- parent2_description,
-- parent3_code,
-- parent3_description,
-- parent4_code,
-- parent4_description,
-- parent5_code,
-- parent5_description,
-- parent6_code,
-- parent6_description,
-- parent7_code,
-- parent7_description,
-- parent8_code,
-- parent8_description,
-- parent9_code,
-- parent9_description,
-- integration_key,
-- service_id,
-- w_batch_id,
-- business_date,
-- w_data_src_id,
-- w_refresh_ts,
-- w_x_custom,
-- w_job_instance_id,
-- w_curr_rec_flg,
-- w_location
-- )
VALUES
(
'00',
'default',
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
'00',
'00',
null,
null,
null,
null,
null,
null,
null,
null
);


insert into epsdld.dim_gl_department
-- (
-- child_value,
-- description,
-- department,
-- department_description,
-- parent2,
-- parent2_description,
-- parent3,
-- parent3_description,
-- parent4,
-- parent4_description,
-- parent5,
-- parent5_description,
-- parent6,
-- parent6_description,
-- parent7,
-- parent7_description,
-- parent8,
-- parent8_description,
-- parent9,
-- parent9_description,
-- integration_key,
-- department_id,
-- w_batch_id,
-- business_date,
-- w_data_src_id,
-- w_refresh_ts,
-- w_x_custom,
-- w_job_instance_id,
-- w_curr_rec_flg,
-- w_location
-- )
values
(
'000',
'default',
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
null,
'000',
'000',
null,
null,
null,
null,
null,
null,
null,
null
);


CREATE TABLE IF NOT EXISTS epsdld.dim_period 
using delta 
LOCATION '/mnt/epsdldeltadev/epsdld/dim_period' TBLPROPERTIES ('transactional'='false')
AS
WITH dates AS (
    SELECT date_add("1990-01-01", a.pos) as date
    FROM (SELECT posexplode(split(repeat(",", 12000), ","))) a
),
dates_expanded AS (
  SELECT
    date,
    year(date) as year,
    month(date) as month,
    case when month(date)<10 then '0'||month(date) else month(date) end as long_month,
    day(date) as day,
    date_format(date, 'u') as day_of_week 
    -- from_unixtime(unix_timestamp(date, "yyyy-MM-dd"), "u") as day_of_week
  FROM dates
)
SELECT
    row_number() over(order by date asc) as date_id,
    date,
    year,
    dayofmonth(date) as month_day,
     case 
      when cast(month(date) AS BIGINT)=1 then 1
      when cast(month(date) AS BIGINT)=2 then 1
      when cast(month(date) AS BIGINT)=3 then 1
      when cast(month(date) AS BIGINT)=4 then 2
      when cast(month(date) AS BIGINT)=5 then 2
      when cast(month(date) AS BIGINT)=6 then 2
      when cast(month(date) AS BIGINT)=7 then 3
      when cast(month(date) AS BIGINT)=8 then 3
      when cast(month(date) AS BIGINT)=9 then 3
      when cast(month(date) AS BIGINT)=10 then 4
      when cast(month(date) AS BIGINT)=11 then 4
      when cast(month(date) AS BIGINT)=12 then 4
     end as quarter,
    month,
    date_format(date, 'W') as week_of_month, 
    -- from_unixtime(unix_timestamp(date, "yyyy-MM-dd"), "W") as week_of_month,
    date_format(date, 'w') as week_of_year, 
    -- from_unixtime(unix_timestamp(date, "yyyy-MM-dd"), "w") as week_of_year,
    day,
    day_of_week,
    date_format(date, 'EEE') as day_of_week_s, 
    -- from_unixtime(unix_timestamp(date, "yyyy-MM-dd"), "EEE") as day_of_week_s,
    date_format(date, 'D') as day_of_year, 
    -- from_unixtime(unix_timestamp(date, "yyyy-MM-dd"), "D") as day_of_year,
    datediff(date, "1970-01-01") as day_of_epoch,
    if(day_of_week BETWEEN 6 AND 7, true, false) as weekend,
    if(
      ((month = 1 AND day = 1 AND day_of_week between 1 AND 5) OR (day_of_week = 1 AND month = 1 AND day BETWEEN 1 AND 3)) 
      OR (month = 1 AND day_of_week = 1 AND day BETWEEN 15 AND 21) 
      OR (month = 2 AND day_of_week = 1 AND day BETWEEN 15 AND 21) 
      OR (month = 5 AND day_of_week = 1 AND day BETWEEN 25 AND 31) 
      OR ((month = 7 AND day = 4 AND day_of_week between 1 AND 5) OR (day_of_week = 1 AND month = 7 AND day BETWEEN 4 AND 6))
      OR (month = 9 AND day_of_week = 1 AND day BETWEEN 1 AND 7) 
      OR ((month = 11 AND day = 11 AND day_of_week between 1 AND 5) OR (day_of_week = 1 AND month = 11 AND day BETWEEN 11 AND 13))
      OR (month = 11 AND day_of_week = 4 AND day BETWEEN 22 AND 28) 
      OR ((month = 12 AND day = 25 AND day_of_week between 1 AND 5) OR (day_of_week = 1 AND month = 12 AND day BETWEEN 25 AND 27))
     ,true, false) as us_holiday,
     case when (mod(year,4)==0) 
then
case when (mod(year,100)==0)
then
case when (mod(year,400)==0)
then 
366
else
365
end
else
366
end
else
365
end as days_of_year,
year||long_month as month_num,
case 
when month=1 then 'Jan'
when month=2 then 'Feb'
when month=3 then 'Mar'
when month=4 then 'Apr'
when month=5 then 'May'
when month=6 then 'Jun'
when month=7 then 'Jul'
when month=8 then 'Aug'
when month=9 then 'Sep'
when month=10 then 'Oct'
when month=11 then 'Nov'
when month=12 then 'Dec'
end as month_short,
case 
when month=1 then 'January'
when month=2 then 'February'
when month=3 then 'March'
when month=4 then 'April'
when month=5 then 'May'
when month=6 then 'June'
when month=7 then 'July'
when month=8 then 'August'
when month=9 then 'September'
when month=10 then 'October'
when month=11 then 'November'
when month=12 then 'December'
end as month_long
FROM dates_expanded;