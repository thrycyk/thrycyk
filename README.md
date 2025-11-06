## Hi there 👋

# Databases and SQL for Data Science with Python (Coursera, IBM)

This repository documents my progress in the Coursera course **Databases and SQL for Data Science with Python**, offered by IBM.  

I am currently halfway through **Module 3**, focusing on intermediate skills of LIKE, ORDER BY, and GROUP BY. 

## 📚 Topics Covered So Far
- LIKE- SELECT column1, column2, ... FROM table_name WHERE columnN LIKE pattern;
- BETWEEN- SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;
- ORDER BY- SELECT column1, column2, ... FROM table_name ORDER BY column1, column2, ... ASC|DESC;
- GROUP BY- SELECT column_name(s) FROM table_name GROUP BY column_name(s)
- HAVING- SELECT column_name(s) FROM table_name GROUP BY column_name(s) HAVING condition

---

I completed **Module 2**, focusing on CREATE TABLE, ALTER, DROP, TRUNCATE.

## 📚 Topics Covered So Far
- CREATE TABLE- MySQL/DB2:  CREATE TABLE table_name (col1 datatype optional keyword, col2 datatype optional keyword,col3 datatype optional keyword,..., coln datatype optional keyword)
- ALTER TABLE- ADD COLUMN- MySQL/DB2:
 Option 1. ALTER TABLE table_name ADD column_name_1 datatype....ADD COLUMN column_name_n datatype; Option 2. ALTER TABLE table_name ADD COLUMN column_name_1 datatype....ADD COLUMN column_name_n datatype; 
- ALTER TABLE - ALTER COLUMN- MySQL:  ALTER TABLE table_name MODIFY column_name_1 new_data_type;
DB2: ALTER TABLE table_name ALTER COLUMN column_name_1 SET DATA TYPE datatype;
- ALTER TABLE- DROP COLUMN- MySQL/DB2:  ALTER TABLE table_name DROP COLUMN column_name_1 ;
- ALTER TABLE- RENAME COLUMN- MySQL:ALTER TABLE table_name CHANGE COLUMN current_column_name new_column_name datatype [optional keywords];
DB2: ALTER TABLE table_name RENAME COLUMN current_column_name TO new_column_name;
- TRUNCATE TABLE- MySQL: TRUNCATE TABLE table_name;
DB2: TRUNCATE TABLE table_name IMMEDIATE;
- DROP TABLE- MySQL/DB2DROP TABLE table_name ;
 

---



I completed **Module 1**, focusing on applying the Basics - SELECT, INSERT, UPDATE, DELETE, COUNT, DISTINCT, and LIMIT to real-world SQL queires. 
 
---

## 📚 Topics Covered So Far
- SELECT- SELECT column1, column2, ... FROM table_name; 
- WHERE- SELECT column1, column2, ...FROM table_name WHERE condition;
- COUNT- SELECT COUNT * FROM table_name ; 
- DISTINCT- SELECT DISTINCT columnname FROM table_name;
- LIMIT- SELECT * FROM table_name LIMIT number;
- INSERT- INSERT INTO table_name (column1,column2,column3...) VALUES(value1,value2,value3...);
- UPDATE- UPDATE table_name SET[[column1]=[VALUES]] WHERE [condition];
- DELETE- DELETE FROM table_name WHERE [condition]; 

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

---
