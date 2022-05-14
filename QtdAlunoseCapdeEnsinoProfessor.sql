SELECT university.prof.prof_id as ID_Professor, count(distinct(student_id)) as QTD_Students, 
teachingability as CPD_Ensino 
FROM university.RA left join university.prof on RA.prof_id = prof.prof_id where RA.prof_id = 5
group by RA.prof_id, prof.teachingability, university.prof.prof_id;