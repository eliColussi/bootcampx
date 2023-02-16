SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration, avg(total_duration) as avg_total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY avg_total_duration;