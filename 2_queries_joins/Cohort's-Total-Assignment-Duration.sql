SELECT SUM(assignment_submissions.duration) FROM assignment_submissions
JOIN students ON (student_id=students.id) JOIN cohorts ON (cohort_id=cohorts.id) GROUP BY cohorts.name HAVING cohorts.name='FEB12'; 
