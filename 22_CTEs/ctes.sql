
1. Display all employees using a CTE

WITH EMP_DATA AS (
    SELECT *
    FROM EINFO
)
SELECT *
FROM EMP_DATA;

Answer Table

+-------+--------+--------+------------+--------+
| EMPID | ENAME  | DEPTID | DESIG      | SALARY |
+-------+--------+--------+------------+--------+
| 101   | Ravi   | 10     | Developer  | 70000  |
| 102   | Priya  | 10     | Analyst    | 50000  |
| 103   | Arun   | 20     | Developer  | 45000  |
| 104   | Kaviya | 20     | Tester     | 40000  |
+-------+--------+--------+------------+--------+

2. Find employees earning above average salary

WITH AVG_SAL AS (
    SELECT AVG(SALARY) AS AVG_SALARY
    FROM EINFO
)
SELECT E.ENAME,
       E.SALARY
FROM EINFO E
CROSS JOIN AVG_SAL A
WHERE E.SALARY > A.AVG_SALARY;

Answer Table

+-------+--------+
| ENAME | SALARY |
+-------+--------+
| Ravi  | 70000  |
| Priya | 50000  |
+-------+--------+
3. Find department-wise total salary
WITH DEPT_SAL AS (
    SELECT DEPTID,
           SUM(SALARY) AS TOTAL_SALARY
    FROM EINFO
    GROUP BY DEPTID
)
SELECT *
FROM DEPT_SAL;

Answer Table

+--------+--------------+
| DEPTID | TOTAL_SALARY |
+--------+--------------+
| 10     | 120000       |
| 20     | 85000        |
+--------+--------------+

4. Find departments having total salary above 100000

WITH DEPT_SAL AS (
    SELECT DEPTID,
           SUM(SALARY) AS TOTAL_SALARY
    FROM EINFO
    GROUP BY DEPTID
)
SELECT *
FROM DEPT_SAL
WHERE TOTAL_SALARY > 100000;

Answer Table

+--------+--------------+
| DEPTID | TOTAL_SALARY |
+--------+--------------+
| 10     | 120000       |
+--------+--------------+

5. Find the highest-paid employee

WITH MAX_SAL AS (
    SELECT MAX(SALARY) AS MAX_SALARY
    FROM EINFO
)
SELECT E.ENAME,
       E.SALARY
FROM EINFO E
CROSS JOIN MAX_SAL M
WHERE E.SALARY = M.MAX_SALARY;

Answer Table

+-------+--------+
| ENAME | SALARY |
+-------+--------+
| Ravi  | 70000  |
+-------+--------+

6. Find the lowest-paid employee

WITH MIN_SAL AS (
    SELECT MIN(SALARY) AS MIN_SALARY
    FROM EINFO
)
SELECT E.ENAME,
       E.SALARY
FROM EINFO E
CROSS JOIN MIN_SAL M
WHERE E.SALARY = M.MIN_SALARY;

Answer Table

+-------+--------+
| ENAME | SALARY |
+-------+--------+
| Kaviya| 40000  |
+-------+--------+

7. Count employees in each department

WITH DEPT_COUNT AS (
    SELECT DEPTID,
           COUNT(*) AS EMP_COUNT
    FROM EINFO
    GROUP BY DEPTID
)
SELECT *
FROM DEPT_COUNT
ORDER BY EMP_COUNT DESC;

Answer Table

+--------+-----------+
| DEPTID | EMP_COUNT |
+--------+-----------+
| 10     | 2         |
| 20     | 2         |
+--------+-----------+

8. Find average salary of each department

WITH DEPT_AVG AS (
    SELECT DEPTID,
           AVG(SALARY) AS AVG_SALARY
    FROM EINFO
    GROUP BY DEPTID
)
SELECT *
FROM DEPT_AVG
ORDER BY AVG_SALARY DESC;

Answer Table

+--------+------------+
| DEPTID | AVG_SALARY |
+--------+------------+
| 10     | 60000      |
| 20     | 42500      |
+--------+------------+

9. Find employees from department 10 using a CTE

WITH DEPT_EMP AS (
    SELECT *
    FROM EINFO
    WHERE DEPTID = 10
)
SELECT ENAME,
       SALARY
FROM DEPT_EMP;

Answer Table

+-------+--------+
| ENAME | SALARY |
+-------+--------+
| Ravi  | 70000  |
| Priya | 50000  |
+-------+--------+

10. Find employees with salary between 40000 and 60000

WITH EMP_DATA AS (
    SELECT *
    FROM EINFO
)
SELECT ENAME,
       SALARY
FROM EMP_DATA
WHERE SALARY BETWEEN 40000 AND 60000
ORDER BY SALARY DESC;

Answer Table

+--------+--------+
| ENAME  | SALARY |
+--------+--------+
| Priya  | 50000  |
| Arun   | 45000  |
| Kaviya | 40000  |
+--------+--------+

11. Use multiple CTEs for department salary and employee count

WITH DEPT_SAL AS (
    SELECT DEPTID,
           SUM(SALARY) AS TOTAL_SALARY
    FROM EINFO
    GROUP BY DEPTID
),
DEPT_COUNT AS (
    SELECT DEPTID,
           COUNT(*) AS EMP_COUNT
    FROM EINFO
    GROUP BY DEPTID
)
SELECT S.DEPTID,
       S.TOTAL_SALARY,
       C.EMP_COUNT
FROM DEPT_SAL S
JOIN DEPT_COUNT C
ON S.DEPTID = C.DEPTID;

Answer Table

+--------+--------------+-----------+
| DEPTID | TOTAL_SALARY | EMP_COUNT |
+--------+--------------+-----------+
| 10     | 120000       | 2         |
| 20     | 85000        | 2         |
+--------+--------------+-----------+

12. Find the highest salary in each department

WITH DEPT_MAX AS (
    SELECT DEPTID,
           MAX(SALARY) AS MAX_SALARY
    FROM EINFO
    GROUP BY DEPTID
)
SELECT E.ENAME,
       E.DEPTID,
       E.SALARY
FROM EINFO E
JOIN DEPT_MAX D
ON E.DEPTID = D.DEPTID
AND E.SALARY = D.MAX_SALARY;

Answer Table

+--------+--------+--------+
| ENAME  | DEPTID | SALARY |
+--------+--------+--------+
| Ravi   | 10     | 70000  |
| Arun   | 20     | 45000  |
+--------+--------+--------+

13. Find departments whose average salary is above 50000

WITH DEPT_AVG AS (
    SELECT DEPTID,
           AVG(SALARY) AS AVG_SALARY
    FROM EINFO
    GROUP BY DEPTID
)
SELECT *
FROM DEPT_AVG
WHERE AVG_SALARY > 50000;

Answer Table

+--------+------------+
| DEPTID | AVG_SALARY |
+--------+------------+
| 10     | 60000      |
+--------+------------+

14. Join employee data with department names using a CTE

WITH EMP_DATA AS (
    SELECT EMPID,
           ENAME,
           DEPTID,
           SALARY
    FROM EINFO
)
SELECT E.ENAME,
       D.DEPTNAME,
       E.SALARY
FROM EMP_DATA E
JOIN EDEPT D
ON E.DEPTID = D.DEPTID
ORDER BY E.SALARY DESC;

Answer Table

+-------+----------+--------+
| ENAME | DEPTNAME | SALARY |
+-------+----------+--------+
| Ravi  | IT       | 70000  |
| Priya | IT       | 50000  |
| Arun  | HR       | 45000  |
| Kaviya| HR       | 40000  |
+-------+----------+--------+

15. Find the second-highest salary using a CTE

WITH SALARY_RANK AS (
    SELECT ENAME,
           SALARY,
           DENSE_RANK() OVER(ORDER BY SALARY DESC) AS RNK
    FROM EINFO
)
SELECT ENAME,
       SALARY
FROM SALARY_RANK
WHERE RNK = 2;

Answer Table

+--------+--------+
| ENAME  | SALARY |
+--------+--------+
| Meena  | 55000  |
+--------+--------+