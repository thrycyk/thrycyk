-- queries.sql

-- Find average seasonal scores by student
SELECT s.first_name,
       AVG(l.fall_score + l.winter_score + l.spring_score)/3 AS avg_seasonal_score
FROM students s
JOIN literacy_assessments l ON s.student_id = l.student_id
GROUP BY s.first_name
ORDER BY avg_seasonal_score DESC;

-- List all students scoring above 90 in overall reading_score
SELECT s.first_name, l.reading_score
FROM literacy_assessments l
JOIN students s ON l.student_id = s.student_id
WHERE l.reading_score > 90;

-- Show literacy strengths and weaknesses by student
SELECT s.first_name, l.strength, l.weakness
FROM literacy_assessments l
JOIN students s ON l.student_id = s.student_id;

-- Compare fall, winter, spring growth
SELECT s.first_name,
       l.fall_score,
       l.winter_score,
       l.spring_score,
       (l.spring_score - l.fall_score) AS growth
FROM literacy_assessments l
JOIN students s ON l.student_id = s.student_id;

