
SUBQUERY IN WHERE

Q1. Find employees earning more than the overall average salary.

Answer:

SELECT ENAME, SALARY
FROM EINFO
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EINFO
);

Table Answer:

+--------+--------+
| ENAME  | SALARY |
+--------+--------+
| Ravi   | 70000  |
| Priya  | 50000  |
| Meena  | 55000  |
+--------+--------+

Q2. Find employees earning the highest salary.

SELECT ENAME, SALARY
FROM EINFO
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM EINFO
);

Table Answer:

+-------+--------+
| ENAME | SALARY |
+-------+--------+
| Ravi  | 70000  |
+-------+--------+

Q3. Find employees belonging to the IT department.

SELECT ENAME, DEPTID
FROM EINFO
WHERE DEPTID = (
    SELECT DEPTID
    FROM EDEPT
    WHERE DEPTNAME = 'IT'
);

Table Answer:

+-------+--------+
| ENAME | DEPTID |
+-------+--------+
| Ravi  | 10     |
| Priya | 10     |
| Arun  | 10     |
+-------+--------+
Q4. Find employees whose salary is greater than 45000.

SELECT ENAME, SALARY
FROM EINFO
WHERE SALARY > (
    SELECT 45000
);

Table Answer:

+-------+--------+
| ENAME | SALARY |
+-------+--------+
| Ravi  | 70000  |
| Priya | 50000  |
| Meena | 55000  |
+-------+--------+
 SUBQUERY IN SELECT

Q5. Display each employee with the overall average salary.

SELECT ENAME,
       SALARY,
       (SELECT AVG(SALARY)
        FROM EINFO) AS AVG_SALARY
FROM EINFO;

Table Answer:

+--------+--------+------------+
| ENAME  | SALARY | AVG_SALARY |
+--------+--------+------------+
| Ravi   | 70000  | 49166.67   |
| Priya  | 50000  | 49166.67   |
| Arun   | 45000  | 49166.67   |
| Kaviya | 40000  | 49166.67   |
| Siva   | 35000  | 49166.67   |
| Meena  | 55000  | 49166.67   |
+--------+--------+------------+

Q6. Display each employee with the maximum salary.

SELECT ENAME,
       SALARY,
       (SELECT MAX(SALARY)
        FROM EINFO) AS MAX_SALARY
FROM EINFO;

Table Answer:

+--------+--------+------------+
| ENAME  | SALARY | MAX_SALARY |
+--------+--------+------------+
| Ravi   | 70000  | 70000      |
| Priya  | 50000  | 70000      |
| Arun   | 45000  | 70000      |
| Kaviya | 40000  | 70000      |
| Siva   | 35000  | 70000      |
| Meena  | 55000  | 70000      |
+--------+--------+------------+
Q7. Display employee name and difference between salary and average salary.

SELECT ENAME,
       SALARY,
       SALARY - (SELECT AVG(SALARY)
        FROM EINFO) AS DIFFERENCE
FROM EINFO;

Table Answer:

+--------+--------+------------+
| ENAME  | SALARY | DIFFERENCE |
+--------+--------+------------+
| Ravi   | 70000  | 20833.33   |
| Priya  | 50000  | 833.33     |
| Arun   | 45000  | -4166.67   |
| Kaviya | 40000  | -9166.67   |
| Siva   | 35000  | -14166.67  |
| Meena  | 55000  | 5833.33    |
+--------+--------+------------+

SUBQUERY IN FROM

A subquery inside FROM creates a derived table, which the outer query can treat like a temporary result set.

Q8. Find the average salary from a derived table.

SELECT AVG(SALARY) AS AVG_SALARY
FROM (
    SELECT SALARY
    FROM EINFO
) T;

Table Answer:

+------------+
| AVG_SALARY |
+------------+
| 49166.67   |
+------------+
Q9. Find employees whose salary is greater than the average using a FROM subquery.


SELECT ENAME, SALARY
FROM (
    SELECT ENAME,
           SALARY,
           (SELECT AVG(SALARY) FROM EINFO) AS AVG_SALARY
    FROM EINFO
) T
WHERE SALARY > AVG_SALARY;

Table Answer:

+-------+--------+
| ENAME | SALARY |
+-------+--------+
| Ravi  | 70000  |
| Priya | 50000  |
| Meena | 55000  |
+-------+--------+
Q10. Find department-wise total salary using a derived table.


SELECT DEPTID,
       TOTAL_SALARY
FROM (
    SELECT DEPTID,
           SUM(SALARY) AS TOTAL_SALARY
    FROM EINFO
    GROUP BY DEPTID
) T;

Table Answer:

+--------+--------------+
| DEPTID | TOTAL_SALARY |
+--------+--------------+
| 10     | 165000       |
| 20     | 75000        |
| 30     | 55000        |
+--------+--------------+

Q11. Find employees earning more than their own department average.


SELECT E.ENAME,
       E.SALARY,
       E.DEPTID
FROM EINFO E
WHERE E.SALARY > (
    SELECT AVG(M.SALARY)
    FROM EINFO M
    WHERE M.DEPTID = E.DEPTID
);

Table Answer:

+--------+--------+--------+
| ENAME  | SALARY | DEPTID |
+--------+--------+--------+
| Ravi   | 70000  | 10     |
| Priya  | 50000  | 10     |
| Kaviya | 40000  | 20     |
+--------+--------+--------+


Q12. Find the highest-paid employee in each department.


SELECT E.ENAME,
       E.SALARY,
       E.DEPTID
FROM EINFO E
WHERE E.SALARY = (
    SELECT MAX(M.SALARY)
    FROM EINFO M
    WHERE M.DEPTID = E.DEPTID
);

Table Answer:

+--------+--------+--------+
| ENAME  | SALARY | DEPTID |
+--------+--------+--------+
| Ravi   | 70000  | 10     |
| Kaviya | 40000  | 20     |
| Meena  | 55000  | 30     |
+--------+--------+--------+
Q13. Find the lowest-paid employee in each department.

SELECT E.ENAME,
       E.SALARY,
       E.DEPTID
FROM EINFO E
WHERE E.SALARY = (
    SELECT MIN(M.SALARY)
    FROM EINFO M
    WHERE M.DEPTID = E.DEPTID
);

Table Answer:

+--------+--------+--------+
| ENAME  | SALARY | DEPTID |
+--------+--------+--------+
| Arun   | 45000  | 10     |
| Siva   | 35000  | 20     |
| Meena  | 55000  | 30     |
+--------+--------+--------+

Q14. Find employees whose salary is greater than the minimum salary of their department.


SELECT E.ENAME,
       E.SALARY,
       E.DEPTID
FROM EINFO E
WHERE E.SALARY > (
    SELECT MIN(M.SALARY)
    FROM EINFO M
    WHERE M.DEPTID = E.DEPTID
);

Table Answer:

+--------+--------+--------+
| ENAME  | SALARY | DEPTID |
+--------+--------+--------+
| Ravi   | 70000  | 10     |
| Priya  | 50000  | 10     |
| Kaviya | 40000  | 20     |
+--------+--------+--------+

Q15. Find employees whose salary equals their department's maximum salary and show department name.


SELECT E.ENAME,
       E.SALARY,
       D.DEPTNAME
FROM EINFO E
JOIN EDEPT D
ON E.DEPTID = D.DEPTID
WHERE E.SALARY = (
    SELECT MAX(M.SALARY)
    FROM EINFO M
    WHERE M.DEPTID = E.DEPTID
);

Table Answer:

+--------+--------+----------+
| ENAME  | SALARY | DEPTNAME |
+--------+--------+----------+
| Ravi   | 70000  | IT       |
| Kaviya | 40000  | HR       |
| Meena  | 55000  | Finance  |
+--------+--------+----------+