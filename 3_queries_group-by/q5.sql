-- Own answer, also working
-- SELECT students.name AS student, avg(Assignment_submissions.duration) AS average_assignment_duration
-- FROM students, assignment_submissions
-- WHERE students.id = assignment_submissions.student_id
-- GROUP BY students.name
-- ORDER BY avg(Assignment_submissions.duration) DESC;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;