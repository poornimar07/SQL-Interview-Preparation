# SQL Interview Preparation — 8-Week Job-Ready Roadmap

A focused 8-week SQL roadmap for Data Analyst jobs and technical interviews.

The learning path is organized from:

**Beginner → Intermediate → Advanced → Interview Preparation**

---

# 🗺️ SQL 8-Week Learning Path

| Level | Topic |
|---|---|
| Beginner | 01. SELECT + FROM |
| Beginner | 02. WHERE |
| Beginner | 03. ORDER BY |
| Beginner | 04. LIMIT + OFFSET |
| Beginner | 05. String Functions |
| Beginner | 06. IN / BETWEEN / LIKE |
| Intermediate | 07. INNER JOIN |
| Intermediate | 08. LEFT JOIN |
| Intermediate | 09. RIGHT JOIN |
| Intermediate | 10. FULL OUTER JOIN using UNION |
| Intermediate | 11. CROSS JOIN |
| Intermediate | 12. GROUP BY |
| Intermediate | 13. Aggregate Functions — COUNT, SUM, AVG, MIN, MAX |
| Intermediate | 14. HAVING |
| Intermediate | 15. CASE WHEN |
| Advanced | 16. Subqueries |
| Advanced | 17. Views |
| Advanced | 18. CTEs |
| Advanced | 19. Window Functions |
| Advanced | 20. ROW_NUMBER |
| Advanced | 21. RANK |
| Advanced | 22. DENSE_RANK |
| Interview | 23. SQL Interview Problems |
| Interview | 24. LeetCode / HackerRank |

---

# 📅 8-Week Flow

### Week 1 — Beginner SQL Fundamentals

**SELECT → FROM → WHERE → ORDER BY → LIMIT → OFFSET → DISTINCT**

### Week 2 — Beginner SQL Filtering & String Functions

**String Functions → IN → BETWEEN → LIKE → NULL Handling**

### Week 3 — Intermediate SQL Aggregation

**GROUP BY → Aggregate Functions → HAVING → CASE WHEN**

### Week 4 — Intermediate SQL Joins

**INNER JOIN → LEFT JOIN → RIGHT JOIN → FULL OUTER JOIN → CROSS JOIN → SELF JOIN**

### Week 5 — Advanced SQL

**Subqueries → Views → CTEs**

### Week 6 — Advanced SQL Window Functions

**Window Functions → ROW_NUMBER → RANK → DENSE_RANK → LAG → LEAD**

### Week 7 — Advanced SQL & Database Concepts

**Primary Keys → Foreign Keys → Constraints → Normalization → Indexes → EXPLAIN → Transactions → Query Performance**

### Week 8 — Interview Preparation

**SQL Interview Problems → LeetCode → HackerRank → Mock Interviews**

---

# 🟢 WEEK 1 — SQL FUNDAMENTALS

## 01. SELECT + FROM

- `SELECT`
- `FROM`
- Selecting specific columns
- Selecting all columns using `*`
- Column aliases using `AS`

## 02. WHERE

- Filtering rows
- `=`
- `<>`
- `<`
- `>`
- `<=`
- `>=`

## 03. ORDER BY

- `ASC`
- `DESC`
- Sorting by one column
- Sorting by multiple columns

## 04. LIMIT + OFFSET

- `LIMIT`
- `OFFSET`
- Limiting the number of rows
- Skipping rows

## DISTINCT

- Removing duplicate values
- `SELECT DISTINCT`

### Practice

- Display employee details
- Filter employees by salary
- Sort employees by salary
- Display the top employees
- Skip records and display the next records
- Display unique departments

---

# 🟢 WEEK 2 — FILTERING & STRING FUNCTIONS

## 05. String Functions

- `UPPER()`
- `LOWER()`
- `LENGTH()`
- `LEFT()`
- `RIGHT()`
- `SUBSTRING()`
- `CONCAT()`
- `REPLACE()`
- `TRIM()`
- `REVERSE()`

## 06. IN / BETWEEN / LIKE

### IN

- `IN`
- `NOT IN`

### BETWEEN

- `BETWEEN`
- `NOT BETWEEN`

### LIKE

- `LIKE`
- `%`
- `_`

### NULL Handling

- `IS NULL`
- `IS NOT NULL`
- `COALESCE()`

### Logical Operators

- `AND`
- `OR`
- `NOT`

### Practice

- Find employees from selected departments
- Find employees within a salary range
- Find employees whose names start with a specific letter
- Find employees whose names contain specific characters
- Handle NULL values
- Modify and format employee names

---

# 🟡 WEEK 3 — AGGREGATION & CONDITIONAL LOGIC

## 12. GROUP BY

- `GROUP BY`
- Grouping by one column
- Grouping by multiple columns

## 13. Aggregate Functions

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

## 14. HAVING

- Filtering grouped results
- `WHERE` vs `HAVING`

## 15. CASE WHEN

- `CASE`
- `WHEN`
- `THEN`
- `ELSE`
- `END`
- Multiple conditions using `CASE`

### Practice

- Count employees in each department
- Find total salary by department
- Find average salary by department
- Find highest and lowest salary
- Find departments with more than a specific number of employees
- Categorize employees based on salary

---

# 🟡 WEEK 4 — JOINS & SET OPERATIONS

## 07. INNER JOIN

Returns matching rows from both tables.

## 08. LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

## 09. RIGHT JOIN

Returns all rows from the right table and matching rows from the left table.

## 10. FULL OUTER JOIN

Returns all rows from both tables.

**MySQL:** Use `LEFT JOIN UNION RIGHT JOIN`.

## 11. CROSS JOIN

Returns every row from the first table combined with every row from the second table.

## SELF JOIN

Joining a table with itself.

### Advanced Join Concepts

- Joining two tables
- Joining three or more tables
- Joining tables using multiple conditions
- Primary Key and Foreign Key relationships

### Set Operations

- `UNION`
- `UNION ALL`
- Difference between `UNION` and `UNION ALL`

### Interview Practice

- Display employee and department details
- Find employees without departments
- Find departments without employees
- Find employees earning more than their managers
- Combine results using `UNION`

---

# 🔴 WEEK 5 — ADVANCED SQL: SUBQUERIES, VIEWS & CTEs

## 16. Subqueries

- Subqueries in `WHERE`
- Subqueries in `SELECT`
- Subqueries in `FROM`
- Correlated subqueries

### Practice

- Find employees earning more than average salary
- Find the highest-paid employee
- Find the second-highest salary
- Find departments with above-average salaries

## 17. Views

- What is a View?
- Creating a View
- Using a View
- Views vs Tables
- When to use a View

## 18. CTEs

- `WITH` clause
- Creating a CTE
- Using multiple CTEs
- CTE vs Subquery
- When to use a CTE

### Practice

- Solve multi-step SQL problems
- Break complex queries into smaller steps
- Use CTEs for readable queries

---

# 🔴 WEEK 6 — ADVANCED SQL: WINDOW FUNCTIONS

## 19. Window Functions

- Window functions
- `PARTITION BY`
- `ORDER BY` inside window functions
- Window Functions vs `GROUP BY`
- Window frames
- Running totals

## 20. ROW_NUMBER()

- Assign unique row numbers
- Find duplicate records
- Find top N records

## 21. RANK()

- Ranking records
- Handling ties

## 22. DENSE_RANK()

- Ranking records
- Handling ties without gaps

### Ranking Difference

**ROW_NUMBER → Always unique numbers**

**RANK → Same rank for ties, gaps after ties**

**DENSE_RANK → Same rank for ties, no gaps**

## Analytical Functions

- `LAG()`
- `LEAD()`

### Interview Practice

- Find duplicate records
- Find top N employees in each department
- Find second-highest salary in each department
- Find Nth highest salary
- Compare current and previous records
- Calculate running totals

---

# 🔴 WEEK 7 — DATABASE CONCEPTS & QUERY PERFORMANCE

## Database Design

- Primary Keys
- Foreign Keys
- Relationships between tables

## Normalization

- 1NF
- 2NF
- 3NF
- Understanding normalization conceptually

## Constraints

- `NOT NULL`
- `UNIQUE`
- `CHECK`
- `PRIMARY KEY`
- `FOREIGN KEY`

## Indexes

- What is an Index?
- Why indexes improve query performance
- When indexes are useful
- Basic indexing trade-offs

## Query Performance

- `EXPLAIN`
- Reading a query execution plan
- Basic query optimization
- Why `SELECT *` can affect performance and maintenance

## Transactions

- What is a transaction?
- ACID properties
  - Atomicity
  - Consistency
  - Isolation
  - Durability

---

# 🔵 WEEK 8 — SQL INTERVIEW PREPARATION

## 23. SQL Interview Problems

Practice common interview problems:

- Find the 2nd highest salary
- Find the Nth highest salary
- Find duplicate records
- Find employees earning more than their managers
- Find highest salary in each department
- Find top N employees in each department
- Find departments with more than a specific number of employees
- Find employees who joined before their managers
- Find highest-paid employee in each department
- Find employees whose salary is above department average
- Find latest record for each employee
- Find consecutive or repeated records
- Find difference between current and previous values

## 24. LeetCode / HackerRank

Practice SQL problems from:

- LeetCode
- HackerRank

### Mock Interview Practice

1. Read and understand the problem
2. Identify the required tables and columns
3. Break the problem into smaller steps
4. Choose the appropriate SQL concept
5. Write the query
6. Test the query
7. Debug errors
8. Optimize the query
9. Explain the logic aloud

### Communication Skills

- Explain your SQL query step by step
- Explain why you used each clause
- Explain your approach before writing the query
- Avoid memorizing solutions
- Practice solving problems independently
- Explain the logic, not just the syntax

---

# 🎯 FINAL SQL LEARNING PATH

```text
BEGINNER
    ↓
SELECT + FROM
    ↓
WHERE
    ↓
ORDER BY
    ↓
LIMIT + OFFSET
    ↓
STRING FUNCTIONS
    ↓
IN / BETWEEN / LIKE
    ↓
INTERMEDIATE
    ↓
GROUP BY
    ↓
AGGREGATE FUNCTIONS
    ↓
HAVING
    ↓
CASE WHEN
    ↓
JOINS
    ↓
SELF JOIN
    ↓
UNION / UNION ALL
    ↓
ADVANCED
    ↓
SUBQUERIES
    ↓
VIEWS
    ↓
CTEs
    ↓
WINDOW FUNCTIONS
    ↓
ROW_NUMBER
    ↓
RANK
    ↓
DENSE_RANK
    ↓
DATABASE & PERFORMANCE
    ↓
INTERVIEW
    ↓
SQL INTERVIEW PROBLEMS
    ↓
LEETCODE / HACKERRANK
    ↓
MOCK INTERVIEWS

