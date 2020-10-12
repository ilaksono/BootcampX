SELECT cohorts.name, SUM(completed_at - started_at) FROM assistance_requests 
JOIN students ON (student_id = students.id) 
JOIN cohorts ON (cohorts.id = cohort_id)
GROUP BY cohorts.name 
ORDER BY SUM(completed_at - started_at);

SELECT AVG(totalduration) FROM (SELECT cohorts.name, SUM(completed_at - started_at) as totalduration FROM assistance_requests 
JOIN students ON (student_id = students.id) 
JOIN cohorts ON (cohorts.id = cohort_id)
GROUP BY cohorts.name) AS foo;