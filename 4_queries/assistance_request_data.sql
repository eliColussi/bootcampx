SELECT assignments.name as assignment, students.name as student, teachers.name as teacher, (completed_at - started_at)
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id + assignment_id
ORDER BY duration