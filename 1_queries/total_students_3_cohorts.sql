SELECT COUNT(*) FROM students
WHERE cohort_id IN (1,2,3);

SELECT id, name FROM students WHERE
email IS NULL OR phone IS NULL;

SELECT id, name FROM STUDENTS WHERE
email NOT LIKE '%gmail.com' AND phone IS NULL;

SELECT name, id, cohort_id FROM students 
WHERE end_date is NULL;


SELECT * FROM students WHERE
end_date IS NOT NULL AND github IS NULL; 
