
1. Rank all employees by salary

SELECT ENAME,
       SALARY,
       RANK() OVER(ORDER BY SALARY DESC) AS SALARY_RANK
FROM EINFO;

Answer Table
+--------+--------+-------------+
| ENAME  | SALARY | SALARY_RANK |
+--------+--------+-------------+
| Ravi   | 70000  | 1           |
| Meena  | 55000  | 2           |
| Priya  | 50000  | 3           |
| Arun   | 45000  | 4           |
+--------+--------+-------------+

2. Assign row number based on salary

SELECT ENAME,
       SALARY,
       ROW_NUMBER() OVER(ORDER BY SALARY DESC) AS ROW_NUM
FROM EINFO;
Answer Table
+--------+--------+---------+
| ENAME  | SALARY | ROW_NUM |
+--------+--------+---------+
| Ravi   | 70000  | 1       |
| Meena  | 55000  | 2       |
| Priya  | 50000  | 3       |
| Arun   | 45000  | 4       |
+--------+--------+---------+

3. Rank employees within each department

SELECT ENAME,
       DEPTID,
       SALARY,
       RANK() OVER(
           PARTITION BY DEPTID
           ORDER BY SALARY DESC
       ) AS DEPT_RANK
FROM EINFO;
Answer Table
+--------+--------+--------+-----------+
| ENAME  | DEPTID | SALARY | DEPT_RANK |
+--------+--------+--------+-----------+
| Ravi   | 10     | 70000  | 1         |
| Priya  | 10     | 50000  | 2         |
| Arun   | 20     | 45000  | 1         |
| Kaviya | 20     | 40000  | 2         |
+--------+--------+--------+-----------+

4. Find the department-wise highest salary

SELECT ENAME,
       DEPTID,
       SALARY,
       MAX(SALARY) OVER(
           PARTITION BY DEPTID
       ) AS DEPT_MAX_SALARY
FROM EINFO;
Answer Table
+--------+--------+--------+-----------------+
| ENAME  | DEPTID | SALARY | DEPT_MAX_SALARY |
+--------+--------+--------+-----------------+
| Ravi   | 10     | 70000  | 70000           |
| Priya  | 10     | 50000  | 70000           |
| Arun   | 20     | 45000  | 45000           |
| Kaviya | 20     | 40000  | 45000           |
+--------+--------+--------+-----------------+

5. Find the department-wise average 

SELECT ENAME,
       DEPTID,
       SALARY,
       AVG(SALARY) OVER(
           PARTITION BY DEPTID
       ) AS DEPT_AVG_SALARY
FROM EINFO;
Answer Table
+--------+--------+--------+-----------------+
| ENAME  | DEPTID | SALARY | DEPT_AVG_SALARY |
+--------+--------+--------+-----------------+
| Ravi   | 10     | 70000  | 60000           |
| Priya  | 10     | 50000  | 60000           |
| Arun   | 20     | 45000  | 42500           |
| Kaviya | 20     | 40000  | 42500           |
+--------+--------+--------+-----------------+

6. Find the difference between employee salary and department average

SELECT ENAME,
       DEPTID,
       SALARY,
       SALARY - AVG(SALARY) OVER(
           PARTITION BY DEPTID
       ) AS SALARY_DIFFERENCE
FROM EINFO;
Answer Table
+--------+--------+--------+------------------+
| ENAME  | DEPTID | SALARY | SALARY_DIFFERENCE|
+--------+--------+--------+------------------+
| Ravi   | 10     | 70000  | 10000            |
| Priya  | 10     | 50000  | -10000           |
| Arun   | 20     | 45000  | 2500             |
| Kaviya | 20     | 40000  | -2500            |
+--------+--------+--------+------------------+

7. Calculate running total of salary

SELECT ENAME,
       SALARY,
       SUM(SALARY) OVER(
           ORDER BY EMPID
       ) AS RUNNING_TOTAL
FROM EINFO;
Answer Table
+--------+--------+---------------+
| ENAME  | SALARY | RUNNING_TOTAL |
+--------+--------+---------------+
| Ravi   | 70000  | 70000         |
| Priya  | 50000  | 120000        |
| Arun   | 45000  | 165000        |
| Kaviya | 40000  | 205000        |
+--------+--------+---------------+

8. Calculate department-wise running total

SELECT ENAME,
       DEPTID,
       SALARY,
       SUM(SALARY) OVER(
           PARTITION BY DEPTID
           ORDER BY EMPID
       ) AS DEPT_RUNNING_TOTAL
FROM EINFO;
Answer Table
+--------+--------+--------+--------------------+
| ENAME  | DEPTID | SALARY | DEPT_RUNNING_TOTAL |
+--------+--------+--------+--------------------+
| Ravi   | 10     | 70000  | 70000              |
| Priya  | 10     | 50000  | 120000             |
| Arun   | 20     | 45000  | 45000              |
| Kaviya | 20     | 40000  | 85000              |
+--------+--------+--------+--------------------+

9. Find previous employee salary using LAG


SELECT ENAME,
       SALARY,
       LAG(SALARY) OVER(
           ORDER BY SALARY DESC
       ) AS PREVIOUS_SALARY
FROM EINFO;
Answer Table
+--------+--------+-----------------+
| ENAME  | SALARY | PREVIOUS_SALARY |
+--------+--------+-----------------+
| Ravi   | 70000  | NULL            |
| Meena  | 55000  | 70000           |
| Priya  | 50000  | 55000           |
| Arun   | 45000  | 50000           |
+--------+--------+-----------------+

10. Find next employee salary using LEAD

SELECT ENAME,
       SALARY,
       LEAD(SALARY) OVER(
           ORDER BY SALARY DESC
       ) AS NEXT_SALARY
FROM EINFO;
Answer Table
+--------+--------+-------------+
| ENAME  | SALARY | NEXT_SALARY |
+--------+--------+-------------+
| Ravi   | 70000  | 55000       |
| Meena  | 55000  | 50000       |
| Priya  | 50000  | 45000       |
| Arun   | 45000  | NULL        |
+--------+--------+-------------+

11. Find top 2 employees from each department

SELECT *
FROM (
    SELECT ENAME,
           DEPTID,
           SALARY,
           ROW_NUMBER() OVER(
               PARTITION BY DEPTID
               ORDER BY SALARY DESC
           ) AS RN
    FROM EINFO
) T
WHERE RN <= 2;
Answer Table
+--------+--------+--------+----+
| ENAME  | DEPTID | SALARY | RN |
+--------+--------+--------+----+
| Ravi   | 10     | 70000  | 1  |
| Priya  | 10     | 50000  | 2  |
| Arun   | 20     | 45000  | 1  |
| Kaviya | 20     | 40000  | 2  |
+--------+--------+--------+----+

12. Find dense rank of employees by salary

SELECT ENAME,
       SALARY,
       DENSE_RANK() OVER(
           ORDER BY SALARY DESC
       ) AS DENSE_RANK_NO
FROM EINFO;
Answer Table
+--------+--------+---------------+
| ENAME  | SALARY | DENSE_RANK_NO |
+--------+--------+---------------+
| Ravi   | 70000  | 1             |
| Meena  | 55000  | 2             |
| Priya  | 50000  | 3             |
| Arun   | 45000  | 4             |
+--------+--------+---------------+
13. Calculate total salary using window function


SELECT ENAME,
       SALARY,
       SUM(SALARY) OVER() AS TOTAL_SALARY
FROM EINFO;
Answer Table
+--------+--------+--------------+
| ENAME  | SALARY | TOTAL_SALARY |
+--------+--------+--------------+
| Ravi   | 70000  | 205000       |
| Priya  | 50000  | 205000       |
| Arun   | 45000  | 205000       |
| Kaviya | 40000  | 205000       |
+--------+--------+--------------+

14. Calculate percentage contribution of each employee salary


SELECT ENAME,
       SALARY,
       ROUND(
           SALARY * 100.0 / SUM(SALARY) OVER(), 2
       ) AS SALARY_PERCENTAGE
FROM EINFO;
Answer Table
+--------+--------+------------------+
| ENAME  | SALARY | SALARY_PERCENTAGE|
+--------+--------+------------------+
| Ravi   | 70000  | 34.15            |
| Priya  | 50000  | 24.39            |
| Arun   | 45000  | 21.95            |
| Kaviya | 40000  | 19.51            |
+--------+--------+------------------+

15. Calculate running total with window frame

SELECT ENAME,
       SALARY,
       SUM(SALARY) OVER(
           ORDER BY EMPID
           ROWS BETWEEN UNBOUNDED PRECEDING
           AND CURRENT ROW
       ) AS RUNNING_TOTAL
FROM EINFO;

Answer Table
+--------+--------+---------------+
| ENAME  | SALARY | RUNNING_TOTAL |
+--------+--------+---------------+
| Ravi   | 70000  | 70000         |
| Priya  | 50000  | 120000        |
| Arun   | 45000  | 165000        |
| Kaviya | 40000  | 205000        |
+--------+--------+---------------+