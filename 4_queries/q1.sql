SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
-- need to check how come we need a JOIN here
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;