-- schema.sql
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    grade_level INTEGER,
    reading_grade_level TEXT,   
    homeroom_teacher TEXT
);

CREATE TABLE literacy_assessments (
    student_id INTEGER,
    fall_score INTEGER,
    fall_strength TEXT,
    fall_weakness TEXT,
    fall_grade_level_score_range TEXT,
    winter_score INTEGER,
    winter_strength TEXT,
    winter_weakness TEXT,
    winter_grade_level_score_range TEXT,
    spring_score INTEGER,
    spring_strength TEXT,
    spring_weakness TEXT,
    spring_grade_level_score_range TEXT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);




