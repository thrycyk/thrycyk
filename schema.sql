-- schema.sql
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    grade_level INTEGER,
    reading_grade_level TEXT,   -- e.g., "On Grade Level", "Below Grade Level"
    homeroom_teacher TEXT
);

CREATE TABLE literacy_assessments (
    assessment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    reading_score INTEGER,
    grade_level_score_range TEXT,   -- e.g., "70-80", "90-100"
    strength TEXT,                  -- literacy strength (e.g., "Comprehension")
    weakness TEXT,                  -- literacy weakness (e.g., "Fluency")
    fall_score INTEGER,
    winter_score INTEGER,
    spring_score INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
