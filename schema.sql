-- schema.sql
-- Defines tables for students and literacy assessments

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    grade_level INTEGER NOT NULL,
    reading_grade_level INTEGER,
    homeroom_teacher TEXT
);

CREATE TABLE literacy_assessments (
    assessment_id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    season TEXT,
    score INTEGER NOT NULL,
    strength TEXT,
    weakness TEXT
);

