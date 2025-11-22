-- data.sql
INSERT INTO evaluators (evaluator_id, name, role) VALUES
(1, 'Alice Johnson', 'QA Analyst'),
(2, 'Bob Smith', 'AI Tester'),
(3, 'Carol Lee', 'Data Scientist');

INSERT INTO evaluations (eval_id, evaluator_id, project, score, eval_date) VALUES
(101, 1, 'Chatbot QA', 85, '2025-11-01'),
(102, 2, 'Image Classifier', 92, '2025-11-02'),
(103, 3, 'SQL Engine', 88, '2025-11-03'),
(104, 1, 'Recommendation System', 79, '2025-11-04'),
(105, 2, 'Fraud Detection', 95, '2025-11-05');
