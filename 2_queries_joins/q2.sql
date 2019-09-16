-- GET assignment submissions duration first
-- Combine the assignments with students
-- Join with the Cohort table
-- Check if students are from that particular Cohort

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';