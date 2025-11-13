## Hi there 👋

# Databases and SQL for Data Science with Python (Coursera, IBM)

This repository documents my progress in the Coursera course **Databases and SQL for Data Science with Python**, offered by IBM.  

I am currently halfway through **Module 3**, focusing on intermediate skills such as `LIKE`, `ORDER BY`, and `GROUP BY`.

---

## 📚 Module 3 Topics
- **LIKE**: `SELECT column1, column2 FROM table_name WHERE column LIKE pattern;`
- **BETWEEN**: `SELECT column_name FROM table_name WHERE column_name BETWEEN value1 AND value2;`
- **ORDER BY**: `SELECT column1, column2 FROM table_name ORDER BY column1 ASC|DESC;`
- **GROUP BY**: `SELECT column_name FROM table_name GROUP BY column_name;`
- **HAVING**: `SELECT column_name FROM table_name GROUP BY column_name HAVING condition;`

---

## 📚 Module 2 Topics
Focused on creating and modifying database structures:
- **CREATE TABLE**: `CREATE TABLE table_name (col1 datatype, col2 datatype, ...);`
- **ALTER TABLE**: Add, modify, drop, or rename columns
- **TRUNCATE TABLE**: `TRUNCATE TABLE table_name;`
- **DROP TABLE**: `DROP TABLE table_name;`

---

## 📚 Module 1 Topics
Introduced basic SQL commands for querying and modifying data:
- **SELECT**: `SELECT column1, column2 FROM table_name;`
- **WHERE**: `SELECT column1, column2 FROM table_name WHERE condition;`
- **COUNT**: `SELECT COUNT(*) FROM table_name;`
- **DISTINCT**: `SELECT DISTINCT column_name FROM table_name;`
- **LIMIT**: `SELECT * FROM table_name LIMIT number;`
- **INSERT**: `INSERT INTO table_name (col1, col2) VALUES (val1, val2);`
- **UPDATE**: `UPDATE table_name SET column1 = value WHERE condition;`
- **DELETE**: `DELETE FROM table_name WHERE condition;`

---

## 📝 Example Query
```sql
-- Find average score by evaluator
SELECT evaluator_id,
       AVG(score) AS avg_score
FROM evaluations
GROUP BY evaluator_id
ORDER BY avg_score DESC;

---

## 🚀 Next Steps
- Complete Module 3 (joins and advanced filtering)
- Begin Module 4: Integrating SQL with Python
- Add more practice queries to this repo

