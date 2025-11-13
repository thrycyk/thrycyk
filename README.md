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

## 📚 Updated Learning: Thursday, November 13, 2025

I’ve successfully completed the Coursera/IBM course **Databases and SQL for Data Science with Python**, verified via [Credly](https://www.credly.com/badges/0d7da86e-b756-4867-a726-b82771ea634f/public_url).

---

## Module 4: Accessing Databases with Python
Introduced Python integration with databases, focusing on SQLite and Db2 connections.

### SQLite
- connect(): sqlite3.connect()
- cursor(): con.cursor()
- execute(): cursor_obj.execute()
- fetchall(): cursor_obj.fetchall()
- fetchmany(): cursor_obj.fetchmany()
- read_sql_query(): read_sql_query()
- shape: dataframe.shape
- close(): con.close()
- CREATE TABLE: CREATE TABLE table_name (...)
- barplot(): seaborn.barplot(x="x-axis_variable", y="y-axis_variable", data=data)
- read_csv(): df = pd.read_csv('file_path.csv')
- to_sql(): df.to_sql('table_name', index=False)
- read_sql(): df = pd.read_sql(sql_query, conn)

### Db2
- connect(): ibm_db.connect('DATABASE=...; HOST=...; PORT=...; UID=...; PWD=...')
- server_info(): ibm_db.server_info()
- close(): con.close()
- exec_immediate(): ibm_db.exec_immediate(conn, sql_statement)

---

## Module 3: SQL Functions and Implicit Joins
Focused on functions and query operations to strengthen data analysis.

- COUNT, AVG, SUM, MIN, MAX
- ROUND, LENGTH, UCASE, LCASE
- DISTINCT, DAY, CURRENT_DATE
- DATEDIFF(), FROM_DAYS(), DATE_ADD(), DATE_SUB()
- Subqueries
- Implicit Inner Join
- Implicit Cross Join

---

These skills build on my foundation in SQL and prepare me to apply database queries in real‑world QA and AI workflows.

