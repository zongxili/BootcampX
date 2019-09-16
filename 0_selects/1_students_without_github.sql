SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id



SELECT name, id FROM students WHERE email = NULL;



SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = N'students'

SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%@gmail.com' AND phone IS NULL;

Get their name, id, and cohort_id.
Order them by cohort_id.

SELECT name, email, phone
FROM students
WHERE end_date IS NOT NULL
AND github IS NULL;