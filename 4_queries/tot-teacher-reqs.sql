SELECT teachers.name, COUNT(*) FROM assistance_requests JOIN teachers ON (teachers.id=teacher_id) 
GROUP BY teachers.name; 