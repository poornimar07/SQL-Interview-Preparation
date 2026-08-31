
VIEW 1: Create a view to display all employee details

CREATE VIEW EMP_DETAILS AS
SELECT *
FROM EINFO;

Table Answer:

+-------+--------+--------+------------+--------+
| EMPID | ENAME  | DEPTID | DESIG      | SALARY |
+-------+--------+--------+------------+--------+
| 101   | Ravi   | 10     | Developer  | 70000  |
| 102   | Priya  | 10     | Analyst    | 50000  |
| 103   | Arun   | 20     | Developer  | 45000  |
| 104   | Kaviya | 20     | Tester     | 40000  |
+-------+--------+--------+------------+--------+

VIEW 2: Create a view for employee name and salary

CREATE VIEW EMP_SALARY AS
SELECT ENAME, SALARY
FROM EINFO;

Table Answer:

+--------+--------+
| ENAME  | SALARY |
+--------+--------+
| Ravi   | 70000  |
| Priya  | 50000  |
| Arun   | 45000  |
| Kaviya | 40000  |
+--------+--------+
VIEW 3: Display employees earning more than 50000 using a
 view

SELECT *
FROM EMP_SALARY
WHERE SALARY > 50000;

Table Answer:

+-------+--------+
| ENAME | SALARY |
+-------+--------+
| Ravi  | 70000  |
+-------+--------+

VIEW 4: Create a view for employees from department 10

CREATE VIEW DEPT10_EMP AS
SELECT EMPID, ENAME, DEPTID, SALARY
FROM EINFO
WHERE DEPTID = 10;

Table Answer:

+-------+-------+--------+--------+
| EMPID | ENAME | DEPTID | SALARY |
+-------+-------+--------+--------+
| 101   | Ravi  | 10     | 70000  |
| 102   | Priya | 10     | 50000  |
+-------+-------+--------+--------+

VIEW 5: Display department 10 employees in descending salary
SELECT *
FROM DEPT10_EMP
ORDER BY SALARY DESC;

Table Answer:

+-------+-------+--------+--------+
| EMPID | ENAME | DEPTID | SALARY |
+-------+-------+--------+--------+
| 101   | Ravi  | 10     | 70000  |
| 102   | Priya | 10     | 50000  |
+-------+-------+--------+--------+

VIEW 6: Create a view with employee and department names

CREATE VIEW EMP_DEPT AS
SELECT E.EMPID,
       E.ENAME,
       D.DEPTNAME,
       E.SALARY
FROM EINFO E
JOIN EDEPT D
ON E.DEPTID = D.DEPTID;

Table Answer:

+-------+--------+----------+--------+
| EMPID | ENAME  | DEPTNAME | SALARY |
+-------+--------+----------+--------+
| 101   | Ravi   | IT       | 70000  |
| 102   | Priya  | IT       | 50000  |
| 103   | Arun   | HR       | 45000  |
| 104   | Kaviya | HR       | 40000  |
+-------+--------+----------+--------+

VIEW 7: Find employees from IT using the view

SELECT *
FROM EMP_DEPT
WHERE DEPTNAME = 'IT';

Table Answer:

+-------+-------+----------+--------+
| EMPID | ENAME | DEPTNAME | SALARY |
+-------+-------+----------+--------+
| 101   | Ravi  | IT       | 70000  |
| 102   | Priya | IT       | 50000  |
+-------+-------+----------+--------+

VIEW 8: Create a view for high-salary employees

CREATE VIEW HIGH_SALARY_EMP AS
SELECT EMPID, ENAME, SALARY
FROM EINFO
WHERE SALARY >= 50000;

Table Answer:

+-------+-------+--------+
| EMPID | ENAME | SALARY |
+-------+-------+--------+
| 101   | Ravi  | 70000  |
| 102   | Priya | 50000  |
+-------+-------+--------+

VIEW 9: Count employees using a view

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP_DETAILS;

Table Answer:

+----------------+
| TOTAL_EMPLOYEES|
+----------------+
| 4              |
+----------------+

VIEW 10: Find the average salary using a view

SELECT AVG(SALARY) AS AVG_SALARY
FROM EMP_SALARY;

Table Answer:

+------------+
| AVG_SALARY |
+------------+
| 51250.00   |
+------------+

VIEW 11: Find the highest salary using a view

SELECT MAX(SALARY) AS MAX_SALARY
FROM EMP_SALARY;

Table Answer:

+------------+
| MAX_SALARY |
+------------+
| 70000      |
+------------+
VIEW 12: Find department-wise total salary

CREATE VIEW DEPT_SALARY AS
SELECT DEPTID,
       SUM(SALARY) AS TOTAL_SALARY
FROM EINFO
GROUP BY DEPTID;

Table Answer:

+--------+--------------+
| DEPTID | TOTAL_SALARY |
+--------+--------------+
| 10     | 120000       |
| 20     | 85000        |
+--------+--------------+

VIEW 13: Display departments with total salary above 100000

SELECT *
FROM DEPT_SALARY
WHERE TOTAL_SALARY > 100000;

Table Answer:

+--------+--------------+
| DEPTID | TOTAL_SALARY |
+--------+--------------+
| 10     | 120000       |
+--------+--------------+

VIEW 14: Update salary through a view

UPDATE EMP_SALARY
SET SALARY = 75000
WHERE ENAME = 'Ravi';

Table Answer:

+-------+--------+
| ENAME | SALARY |
+-------+--------+
| Ravi  | 75000  |
+-------+--------+

VIEW 15: Remove a view

DROP VIEW IF EXISTS EMP_SALARY;

Table Answer:

+----------------------------+
| Query OK                   |
+----------------------------+
| View EMP_SALARY removed    |
+----------------------------+