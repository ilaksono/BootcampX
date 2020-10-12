SELECT teachers.name,cohorts.name, COUNT(*) FROM assistance_requests JOIN teachers ON (teachers.id = teacher_id) 
JOIN students ON (students.id = student_id)
JOIN cohorts ON (cohorts.id = cohort_id)
WHERE cohorts.name LIKE 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY COUNT(*) DESC;