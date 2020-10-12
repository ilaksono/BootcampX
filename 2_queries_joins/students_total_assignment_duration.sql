SELECT students.name, SUM(assignment_submissions.duration) FROM assignment_submissions JOIN students ON (students.id=student_id) GROUP BY students.name HAVING students.name = 'Ibrahim Schimmel';
