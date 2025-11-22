-- queries.sql

-- Find average score by evaluator
SELECT e.name,
       AVG(ev.score) AS avg_score
FROM evaluators e
JOIN evaluations ev ON e.evaluator_id = ev.evaluator_id
GROUP BY e.name
ORDER BY avg_score DESC;

-- List all projects with scores above 90
SELECT project, score
FROM evaluations
WHERE score > 90;

-- Count evaluations per evaluator
SELECT e.name,
       COUNT(ev.eval_id) AS total_evaluations
FROM evaluators e
LEFT JOIN evaluations ev ON e.evaluator_id = ev.evaluator_id
GROUP BY e.name;
