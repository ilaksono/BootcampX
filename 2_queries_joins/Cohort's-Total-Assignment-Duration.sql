SELECT SUM(assignment_submissions.duration) FROM assignment_submissions
JOIN students ON (student_id=students.id) JOIN cohorts ON (cohort_id=cohorts.id) GROUP BY cohorts.name HAVING cohorts.name='FEB12'; 


SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL GROUP BY students.name HAVING count(assignment_submissions.*) < 100;

