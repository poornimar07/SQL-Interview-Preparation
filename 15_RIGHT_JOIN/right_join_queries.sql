
Q1. Display all departments with matching employee details.

Answer:

SELECT E.EMPID, E.ENAME, E.DEPTID, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+-------+---------+--------+--------+------------+
| EMPID | ENAME   | DEPTID | SALARY | DEPTNAME   |
+-------+---------+--------+--------+------------+
| 101   | Ravi    | 10     | 60000  | IT         |
| 103   | Arun    | 10     | 30000  | IT         |
| 102   | Priya   | 20     | 45000  | HR         |
| 104   | Kaviya  | 30     | 55000  | Finance    |
| NULL  | NULL    | NULL   | NULL   | Marketing  |
+-------+---------+--------+--------+------------+


Q2. Display all department names and employee names.

Answer:

SELECT D.DEPTNAME, E.ENAME
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+------------+---------+
| DEPTNAME   | ENAME   |
+------------+---------+
| IT         | Ravi    |
| IT         | Arun    |
| HR         | Priya   |
| Finance    | Kaviya  |
| Marketing  | NULL    |
+------------+---------+


Q3. Display all departments including departments without employees.

Answer:

SELECT D.DEPTID, D.DEPTNAME, E.ENAME
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+--------+------------+---------+
| DEPTID | DEPTNAME   | ENAME   |
+--------+------------+---------+
| 10     | IT         | Ravi    |
| 10     | IT         | Arun    |
| 20     | HR         | Priya   |
| 30     | Finance    | Kaviya  |
| 40     | Marketing  | NULL    |
+--------+------------+---------+


Q4. Display departments that do not have any employees.

Answer:

SELECT D.DEPTID, D.DEPTNAME
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.EMPID IS NULL;

Table Answer:

+--------+------------+
| DEPTID | DEPTNAME   |
+--------+------------+
| 40     | Marketing  |
+--------+------------+


Q5. Display all departments and employees whose salary is greater than 40000.

Answer:

SELECT D.DEPTNAME, E.ENAME, E.SALARY
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.SALARY > 40000;

Table Answer:

+------------+---------+--------+
| DEPTNAME   | ENAME   | SALARY |
+------------+---------+--------+
| IT         | Ravi    | 60000  |
| HR         | Priya   | 45000  |
| Finance    | Kaviya  | 55000  |
+------------+---------+--------+


Q6. Display all departments and their employee salaries.

Answer:

SELECT D.DEPTNAME, E.ENAME, E.SALARY
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+------------+---------+--------+
| DEPTNAME   | ENAME   | SALARY |
+------------+---------+--------+
| IT         | Ravi    | 60000  |
| IT         | Arun    | 30000  |
| HR         | Priya   | 45000  |
| Finance    | Kaviya  | 55000  |
| Marketing  | NULL    | NULL   |
+------------+---------+--------+


Q7. Display all departments where employees earn more than 50000.

Answer:

SELECT D.DEPTNAME, E.ENAME, E.SALARY
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.SALARY > 50000;

Table Answer:

+------------+---------+--------+
| DEPTNAME   | ENAME   | SALARY |
+------------+---------+--------+
| IT         | Ravi    | 60000  |
| Finance    | Kaviya  | 55000  |
+------------+---------+--------+


Q8. Display all departments and employee IDs.

Answer:

SELECT D.DEPTNAME, D.DEPTID, E.EMPID
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+------------+--------+-------+
| DEPTNAME   | DEPTID | EMPID |
+------------+--------+-------+
| IT         | 10     | 101   |
| IT         | 10     | 103   |
| HR         | 20     | 102   |
| Finance    | 30     | 104   |
| Marketing  | 40     | NULL  |
+------------+--------+-------+


Q9. Display all departments whose employees have salary between 30000 and 50000.

Answer:

SELECT D.DEPTNAME, E.ENAME, E.SALARY
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.SALARY BETWEEN 30000 AND 50000;

Table Answer:

+------------+---------+--------+
| DEPTNAME   | ENAME   | SALARY |
+------------+---------+--------+
| IT         | Arun    | 30000  |
| HR         | Priya   | 45000  |
+------------+---------+--------+


Q10. Display all departments and employees ordered by department name.

Answer:

SELECT D.DEPTNAME, E.ENAME, E.SALARY
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
ORDER BY D.DEPTNAME;

Table Answer:

+------------+---------+--------+
| DEPTNAME   | ENAME   | SALARY |
+------------+---------+--------+
| Finance    | Kaviya  | 55000  |
| HR         | Priya   | 45000  |
| IT         | Ravi    | 60000  |
| IT         | Arun    | 30000  |
| Marketing  | NULL    | NULL   |
+------------+---------+--------+


Q11. Display all departments and employees ordered by salary from highest to lowest.

Answer:

SELECT D.DEPTNAME, E.ENAME, E.SALARY
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
ORDER BY E.SALARY DESC;

Table Answer:

+------------+---------+--------+
| DEPTNAME   | ENAME   | SALARY |
+------------+---------+--------+
| IT         | Ravi    | 60000  |
| Finance    | Kaviya  | 55000  |
| HR         | Priya   | 45000  |
| IT         | Arun    | 30000  |
| Marketing  | NULL    | NULL   |
+------------+---------+--------+


Q12. Display all departments and indicate whether they have employees.

Answer:

SELECT D.DEPTNAME,
       CASE
           WHEN E.EMPID IS NULL THEN 'NO EMPLOYEE'
           ELSE 'EMPLOYEE EXISTS'
       END AS EMPLOYEE_STATUS
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+------------+------------------+
| DEPTNAME   | EMPLOYEE_STATUS  |
+------------+------------------+
| IT         | EMPLOYEE EXISTS  |
| IT         | EMPLOYEE EXISTS  |
| HR         | EMPLOYEE EXISTS  |
| Finance    | EMPLOYEE EXISTS  |
| Marketing  | NO EMPLOYEE      |
+------------+------------------+


Q13. Display departments with employee names starting with 'R'.

Answer:

SELECT D.DEPTNAME, E.ENAME
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.ENAME LIKE 'R%';

Table Answer:

+----------+-------+
| DEPTNAME | ENAME |
+----------+-------+
| IT       | Ravi  |
+----------+-------+


Q14. Display all departments with employees whose salary is greater than 30000.

Answer:

SELECT D.DEPTID, D.DEPTNAME, E.ENAME, E.SALARY
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.SALARY > 30000;

Table Answer:

+--------+------------+---------+--------+
| DEPTID | DEPTNAME   | ENAME   | SALARY |
+--------+------------+---------+--------+
| 10     | IT         | Ravi    | 60000  |
| 20     | HR         | Priya   | 45000  |
| 30     | Finance    | Kaviya  | 55000  |
+--------+------------+---------+--------+


Q15. Display all departments, employee names, employee IDs, and salaries.

Answer:

SELECT D.DEPTID,
       D.DEPTNAME,
       E.EMPID,
       E.ENAME,
       E.SALARY
FROM EMP_JOIN E
RIGHT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+--------+------------+-------+---------+--------+
| DEPTID | DEPTNAME   | EMPID | ENAME   | SALARY |
+--------+------------+-------+---------+--------+
| 10     | IT         | 101   | Ravi    | 60000  |
| 10     | IT         | 103   | Arun    | 30000  |
| 20     | HR         | 102   | Priya   | 45000  |
| 30     | Finance    | 104   | Kaviya  | 55000  |
| 40     | Marketing  | NULL  | NULL    | NULL   |
+--------+------------+-------+---------+--------+