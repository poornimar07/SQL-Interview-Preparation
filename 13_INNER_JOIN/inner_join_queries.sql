
Table: EMP_JOIN

EMPID | ENAME | DEPTID | SALARY
Q1. Display employee name and salary along with department ID.

Answer:

SELECT E.ENAME, E.SALARY, D.DEPTID
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+---------+--------+--------+
| ENAME   | SALARY | DEPTID |
+---------+--------+--------+
| Ravi    | 60000  | 10     |
| Priya   | 45000  | 20     |
| Arun    | 30000  | 10     |
| Kaviya  | 55000  | 30     |
+---------+--------+--------+


Q2. Display employee name and department name.

Answer:

SELECT E.ENAME, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+---------+------------+
| ENAME   | DEPTNAME   |
+---------+------------+
| Ravi    | IT         |
| Priya   | HR         |
| Arun    | IT         |
| Kaviya  | Finance    |
+---------+------------+


Q3. Display employee name, department name, and salary.

Answer:

SELECT E.ENAME, D.DEPTNAME, E.SALARY
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+---------+------------+--------+
| ENAME   | DEPTNAME   | SALARY |
+---------+------------+--------+
| Ravi    | IT         | 60000  |
| Priya   | HR         | 45000  |
| Arun    | IT         | 30000  |
| Kaviya  | Finance    | 55000  |
+---------+------------+--------+


Q4. Display employees who belong to the IT department.

Answer:

SELECT E.ENAME, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE D.DEPTNAME = 'IT';

Table Answer:

+---------+----------+
| ENAME   | DEPTNAME |
+---------+----------+
| Ravi    | IT       |
| Arun    | IT       |
+---------+----------+

Q5. Display employees whose salary is greater than 40000 along with their department name.

Answer:

SELECT E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.SALARY > 40000;

Table Answer:

+---------+--------+------------+
| ENAME   | SALARY | DEPTNAME   |
+---------+--------+------------+
| Ravi    | 60000  | IT         |
| Priya   | 45000  | HR         |
| Kaviya  | 55000  | Finance    |
+---------+--------+------------+


Q6. Display all employee IDs and their department names.

Answer:

SELECT E.EMPID, E.ENAME, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+-------+---------+------------+
| EMPID | ENAME   | DEPTNAME   |
+-------+---------+------------+
| 101   | Ravi    | IT         |
| 102   | Priya   | HR         |
| 103   | Arun    | IT         |
| 104   | Kaviya  | Finance    |
+-------+---------+------------+


Q7. Display employees working in the HR department.

Answer:

SELECT E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE D.DEPTNAME = 'HR';

Table Answer:

+---------+--------+----------+
| ENAME   | SALARY | DEPTNAME |
+---------+--------+----------+
| Priya   | 45000  | HR       |
+---------+--------+----------+


Q8. Display employee name and department name in alphabetical order.

Answer:

SELECT E.ENAME, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
ORDER BY E.ENAME;

Table Answer:

+---------+------------+
| ENAME   | DEPTNAME   |
+---------+------------+
| Arun    | IT         |
| Kaviya  | Finance    |
| Priya   | HR         |
| Ravi    | IT         |
+---------+------------+


Q9. Display employees whose salary is between 30000 and 50000.

Answer:

SELECT E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.SALARY BETWEEN 30000 AND 50000;

Table Answer:

+---------+--------+----------+
| ENAME   | SALARY | DEPTNAME |
+---------+--------+----------+
| Priya   | 45000  | HR       |
| Arun    | 30000  | IT       |
+---------+--------+----------+


Q10. Display employees who work in either IT or Finance.

Answer:

SELECT E.ENAME, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE D.DEPTNAME IN ('IT', 'Finance');

Table Answer:

+---------+----------+
| ENAME   | DEPTNAME |
+---------+----------+
| Ravi    | IT       |
| Arun    | IT       |
| Kaviya  | Finance  |
+---------+----------+


Q11. Display employee name, salary, and department name for employees earning more than 50000.

Answer:

SELECT E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.SALARY > 50000;

Table Answer:

+---------+--------+----------+
| ENAME   | SALARY | DEPTNAME |
+---------+--------+----------+
| Ravi    | 60000  | IT       |
| Kaviya  | 55000  | Finance  |
+---------+--------+----------+


Q12. Display employees whose department ID is 10.

Answer:

SELECT E.EMPID, E.ENAME, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.DEPTID = 10;

Table Answer:

+-------+-------+----------+
| EMPID | ENAME | DEPTNAME |
+-------+-------+----------+
| 101   | Ravi  | IT       |
| 103   | Arun  | IT       |
+-------+-------+----------+

Q13. Display employee name, salary, and department name ordered by salary from highest to lowest.

Answer:

SELECT E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
ORDER BY E.SALARY DESC;

Table Answer:

+---------+--------+----------+
| ENAME   | SALARY | DEPTNAME |
+---------+--------+----------+
| Ravi    | 60000  | IT       |
| Kaviya  | 55000  | Finance  |
| Priya   | 45000  | HR       |
| Arun    | 30000  | IT       |
+---------+--------+----------+

Q14. Display employees whose department name starts with 'I'.

Answer:

SELECT E.ENAME, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE D.DEPTNAME LIKE 'I%';

Table Answer:

+---------+----------+
| ENAME   | DEPTNAME |
+---------+----------+
| Ravi    | IT       |
| Arun    | IT       |
+---------+----------+

Q15. Display employee ID, employee name, salary, and department name for all matching departments.

Answer:

SELECT E.EMPID, E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
INNER JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+-------+---------+--------+------------+
| EMPID | ENAME   | SALARY | DEPTNAME   |
+-------+---------+--------+------------+
| 101   | Ravi    | 60000  | IT         |
| 102   | Priya   | 45000  | HR         |
| 103   | Arun    | 30000  | IT         |
| 104   | Kaviya  | 55000  | Finance    |
+-------+---------+--------+------------+