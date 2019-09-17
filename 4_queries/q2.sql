-- Here is my own answer, also works
-- SELECT count(*) AS total_assistances, students.name
-- FROM assistance_requests
-- JOIN students on students.id = assistance_requests.student_id
-- WHERE students.name = 'Elliot Dickinson'
-- GROUP BY students.name;

SELECT count(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;