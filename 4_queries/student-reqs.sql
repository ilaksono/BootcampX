SELECT students.name, COUNT(*) FROM assistance_requests JOIN students ON (students.id = student_id) 
GROUP BY students.name ORDER BY students.name; 