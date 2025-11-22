-- data.sql
INSERT INTO students (student_id, first_name, grade_level, reading_grade_level, homeroom_teacher) VALUES
(1, 'Alice', 3, 'On Grade Level', 'Ms. Rivera'),
(2, 'Bob', 4, 'Above Grade Level', 'Ms. Rivera'),
(3, 'Carol', 3, 'Below Grade Level', 'Ms. Rivera');

INSERT INTO literacy_assessments (assessment_id, student_id, reading_score, grade_level_score_range, strength, weakness, fall_score, winter_score, spring_score) VALUES
(1001, 1, 85, '80-90', 'Comprehension', 'Fluency', 82, 85, 88),
(1002, 2, 95, '90-100', 'Vocabulary', 'Inference', 93, 95, 97),
(1003, 3, 72, '70-80', 'Phonics', 'Comprehension', 70, 72, 75);
