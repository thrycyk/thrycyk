-- queries.sql

-- 1. List all students
-- This query shows the roster of students with their grade level.
SELECT first_name, last_name, grade_level
FROM students;

-- 2. Show Fall and Spring scores side by side
-- Compare seasonal scores to see growth over time.
SELECT students.first_name, f.score AS fall_score, sp.score AS spring_score
FROM students
JOIN literacy_assessments f ON students.student_id = f.student_id AND f.season = 'Fall'
JOIN literacy_assessments sp ON students.student_id = sp.student_id AND sp.season = 'Spring';

-- 3. Find students who grew by at least 10 points
-- Identifies students with significant literacy improvement.
SELECT students.first_name
FROM students
JOIN literacy_assessments f ON students.student_id = f.student_id AND f.season = 'Fall'
JOIN literacy_assessments sp ON students.student_id = sp.student_id AND sp.season = 'Spring'
WHERE sp.score >= f.score + 20;

-- 4. Students meeting grade level expectations
-- Shows which students are at or above grade level.
SELECT first_name, grade_level, reading_grade_level
FROM students
WHERE reading_grade_level IN ('At Grade Level', 'Above Grade Level');

-- 5. Count students at/above grade level
-- Summarizes literacy achievement outcomes.
SELECT reading_grade_level, COUNT(*) AS num_students
FROM students
WHERE reading_grade_level IN ('At Grade Level', 'Above Grade Level')
GROUP BY reading_grade_level;

