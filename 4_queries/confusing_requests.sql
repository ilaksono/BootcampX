SELECT assignments.id, assignments.name,assignments.day, assignments.chapter, COUNT(*) FROM assistance_requests 
JOIN assignments ON (assignments.id = assignment_id) 
GROUP BY assignments.id, assignments.name,assignments.day, assignments.chapter
ORDER BY 5 DESC;