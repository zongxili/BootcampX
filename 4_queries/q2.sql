SELECT count(*) AS total_assistances, students.name
FROM assistance_requests
JOIN students on students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;

-- need to check how come we need do COUNT(assistance_requests.*)
SELECT count(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;