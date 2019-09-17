-- own answer
-- SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, assignments.name, count(*)
-- FROM assistance_requests
-- JOIN assignments ON assignments.id = assistance_requests.assignment_id
-- GROUP BY assignments.id
-- ORDER BY count(*) DESC;
SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;