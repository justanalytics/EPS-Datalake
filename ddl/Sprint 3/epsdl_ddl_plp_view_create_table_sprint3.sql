create view [epsdlplp].[vw_fact_inspection_observation] as
select a.*, b.id, b.details from [epsdlplp].[fact_inspection] a
left join [epsdlplp].[dim_inspection_observation] b
on a.inspection_id = b.inspection_id;


create view [epsdlplp].[vw_dim_sire_inspection] as
select * from [epsdlplp].[dim_sire_inspection]
where flag like 'SIRE%' or flag = 'MOC';


create view [epsdlplp].[vw_fact_sire_inspection] as
select * from [epsdlplp].[fact_sire_inspection]
where (flag like 'SIRE%' and observation ='No') or flag = 'MOC';



create view [epsdlplp].[vw_fact_inspection_matching] as
select 
case when c.department = 13 then 'OFFICE-TECH' when c.department = 21 then 'OFFICE-OPS' END as category
, c.chapter_no
, d.chapter
, d.flag as chapter_flag
, a.date_done as audit_date
, b.vessel_code
, b.vessel_id
, a.inspection_id as audit_id
, concat(a.vessel_code,a.inspection_id) as req_id
, c.description as question

from [epsdlplp].[fact_inspection] a
join [epsdlplp].[dim_gl_vessel] b on a.vessel_id = b.vessel_id
join [epsdlplp].[dim_inspection] c on a.qq_id = c.qq_id
join [epsdlplp].[dim_chapter] d on c.chapter_no = d.chapter_number
where a.insp_answer_id = 4 and c.department in (13,21)

union all

select 
case when a.flag like '%VSL%' and a.observation ='No' then 'MASTER' else a.flag end as category 
, c.chapter_no
, d.chapter
, d.flag as chapter_flag
, a.audit_date
, b.vessel_code
, b.vessel_id
, a.audit_id
, a.req_id
, c.question_text as question

from (select * from [epsdlplp].[fact_sire_inspection] where (flag like '%VSL%' and observation ='No') or flag = 'MOC') a
join [epsdlplp].[dim_gl_vessel] b on a.vessel_id = b.vessel_id
join (select * from [epsdlplp].[dim_sire_inspection] /*where flag like 'SIRE%' or flag = 'MOC'*/) c on a.question_number = c.question_number
join [epsdlplp].[dim_chapter] d on c.chapter_no = d.chapter_number
;