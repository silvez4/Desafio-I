select RA.prof_id as ID_Professor, count( (registration.course_id)) as QTD_Courses from university.RA
left join university.registration on RA.student_id = registration.student_id 
left join university.student on RA.student_id = student.student_id 
group by RA.prof_id