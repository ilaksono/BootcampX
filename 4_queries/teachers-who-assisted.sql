SELECT distinct teachers.name as teacher, cohorts.name as cohort FROM assistance_requests
JOIN teachers ON (teachers.id = teacher_id) 
JOIN students ON (students.id = student_id)
JOIN cohorts ON (cohorts.id = cohort_id)
WHERE teachers.id IN (SELECT teacher_id FROM assistance_requests) AND cohorts.name LIKE 'JUL02' ORDER BY cohorts.name;