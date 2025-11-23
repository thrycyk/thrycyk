-- schema.sql
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    grade_level INTEGER,
    reading_grade_level TEXT,   
    homeroom_teacher TEXT
);

DROP TABLE IF EXISTS literacy_assessments;
CREATE TABLE literacy_assessments (
    assessment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    season TEXT, -- 'Fall', 'Winter', 'Spring'
    score INTEGER,
    strength TEXT,
    weakness TEXT,
    grade_level_score_range TEXT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);


CREATE TABLE teacher_feedback (
    feedback_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    season TEXT,
    time_saved BOOLEAN,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);



