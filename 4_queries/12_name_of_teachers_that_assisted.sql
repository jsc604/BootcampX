SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE assistance_requests.id IS NOT NULL
AND cohorts.name = 'JUL02'
ORDER BY teachers.name;