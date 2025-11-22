-- schema.sql
CREATE TABLE evaluators (
    evaluator_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    role TEXT
);

CREATE TABLE evaluations (
    eval_id INTEGER PRIMARY KEY,
    evaluator_id INTEGER,
    project TEXT NOT NULL,
    score INTEGER,
    eval_date DATE,
    FOREIGN KEY (evaluator_id) REFERENCES evaluators(evaluator_id)
);