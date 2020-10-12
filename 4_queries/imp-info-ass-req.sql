SELECT teachers.name as teacher, students.name as student, assignments.name as assignment
  , completed_at-started_at as duration
FROM assistance_requests JOIN teachers ON (teacher_id = teachers.id)
JOIN students ON (students.id=student_id)
JOIN assignments ON (assignments.id = assignment_id) ORDER BY duration;

SELECT AVG(completed_at-started_at)
FROM assistance_requests;