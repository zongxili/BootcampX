-- SELECT ALL NEEDED elements first
-- Join students to Submissions
-- Join assignment to Submissions
-- So new we have two Joints: Students having their submission for each assignment; also each assignemt having their own duration
-- Comparing the Duration of Two Joints
SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;asdf