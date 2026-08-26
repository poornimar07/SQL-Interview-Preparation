
Q1. Display all employees and all departments.

Answer:

SELECT E.EMPID,E.ENAME,E.DEPTID,E.SALARY,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID

UNION

SELECT E.EMPID,E.ENAME,E.DEPTID,E.SALARY,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID;

Table Answer:

+-------+--------+--------+--------+-----------+
| EMPID | ENAME  | DEPTID | SALARY | DEPTNAME  |
+-------+--------+--------+--------+-----------+
| 101   | Ravi   | 10     | 60000  | IT        |
| 102   | Priya  | 20     | 45000  | HR        |
| 103   | Arun   | 10     | 30000  | IT        |
| 104   | Kaviya | 30     | 55000  | Finance   |
| 105   | Siva   | 50     | 35000  | NULL      |
| NULL  | NULL   | NULL   | NULL   | Marketing |
+-------+--------+--------+--------+-----------+


Q2. Display employee names and department names.

Answer:

SELECT E.ENAME,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID

UNION

SELECT E.ENAME,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID;

Table Answer:

+--------+-----------+
| ENAME  | DEPTNAME  |
+--------+-----------+
| Ravi   | IT        |
| Priya  | HR        |
| Arun   | IT        |
| Kaviya | Finance   |
| Siva   | NULL      |
| NULL   | Marketing |
+--------+-----------+


Q3. Display employee ID, name and department name.

Answer:

SELECT E.EMPID,E.ENAME,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID

UNION

SELECT E.EMPID,E.ENAME,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID;

Table Answer:

+-------+--------+-----------+
| EMPID | ENAME  | DEPTNAME  |
+-------+--------+-----------+
| 101   | Ravi   | IT        |
| 102   | Priya  | HR        |
| 103   | Arun   | IT        |
| 104   | Kaviya | Finance   |
| 105   | Siva   | NULL      |
| NULL  | NULL   | Marketing |
+-------+--------+-----------+


Q4. Display employee name, salary and department name.

Answer:

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID

UNION

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID;

Table Answer:

+--------+--------+-----------+
| ENAME  | SALARY | DEPTNAME  |
+--------+--------+-----------+
| Ravi   | 60000  | IT        |
| Priya  | 45000  | HR        |
| Arun   | 30000  | IT        |
| Kaviya | 55000  | Finance   |
| Siva   | 35000  | NULL      |
| NULL   | NULL   | Marketing |
+--------+--------+-----------+


Q5. Display employees whose salary is greater than 40000.

Answer:

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE E.SALARY>40000

UNION

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE E.SALARY>40000;

Table Answer:

+--------+--------+-----------+
| ENAME  | SALARY | DEPTNAME  |
+--------+--------+-----------+
| Ravi   | 60000  | IT        |
| Priya  | 45000  | HR        |
| Kaviya | 55000  | Finance   |
+--------+--------+-----------+


Q6. Display employees who do not have a matching department.

Answer:

SELECT E.EMPID,E.ENAME,E.DEPTID
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE D.DEPTID IS NULL;

Table Answer:

+-------+-------+--------+
| EMPID | ENAME | DEPTID |
+-------+-------+--------+
| 105   | Siva  | 50     |
+-------+-------+--------+


Q7. Display departments that do not have any employees.

Answer:

SELECT D.DEPTID,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE E.EMPID IS NULL;

Table Answer:

+--------+-----------+
| DEPTID | DEPTNAME  |
+--------+-----------+
| 40     | Marketing |
+--------+-----------+


Q8. Display employees whose salary is between 30000 and 50000.

Answer:

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE E.SALARY BETWEEN 30000 AND 50000

UNION

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE E.SALARY BETWEEN 30000 AND 50000;

Table Answer:

+-------+--------+----------+
| ENAME | SALARY | DEPTNAME |
+-------+--------+----------+
| Priya | 45000  | HR       |
| Arun  | 30000  | IT       |
| Siva  | 35000  | NULL     |
+-------+--------+----------+


Q9. Display all records ordered by department name.

Answer:

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID

UNION

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
ORDER BY DEPTNAME;

Table Answer:

+--------+--------+-----------+
| ENAME  | SALARY | DEPTNAME  |
+--------+--------+-----------+
| Kaviya | 55000  | Finance   |
| Priya  | 45000  | HR        |
| Ravi   | 60000  | IT        |
| Arun   | 30000  | IT        |
| NULL   | NULL   | Marketing |
| Siva   | 35000  | NULL      |
+--------+--------+-----------+


Q10. Display all employees and departments without duplicate rows.

Answer:

SELECT E.ENAME,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID

UNION

SELECT E.ENAME,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID;

Table Answer:

+--------+-----------+
| ENAME  | DEPTNAME  |
+--------+-----------+
| Ravi   | IT        |
| Priya  | HR        |
| Arun   | IT        |
| Kaviya | Finance   |
| Siva   | NULL      |
| NULL   | Marketing |
+--------+-----------+


Q11. Display employees from IT and HR departments.

Answer:

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE D.DEPTNAME IN ('IT','HR')

UNION

SELECT E.ENAME,E.SALARY,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE D.DEPTNAME IN ('IT','HR');

Table Answer:

+-------+--------+----------+
| ENAME | SALARY | DEPTNAME |
+-------+--------+----------+
| Ravi  | 60000  | IT       |
| Arun  | 30000  | IT       |
| Priya | 45000  | HR       |
+-------+--------+----------+
Q12. Display employee ID, name, salary, department ID and department name.

Answer:

SELECT E.EMPID,E.ENAME,E.SALARY,E.DEPTID,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID

UNION

SELECT E.EMPID,E.ENAME,E.SALARY,E.DEPTID,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID;

Table Answer:

+-------+--------+--------+--------+-----------+
| EMPID | ENAME  | SALARY | DEPTID | DEPTNAME  |
+-------+--------+--------+--------+-----------+
| 101   | Ravi   | 60000  | 10     | IT        |
| 102   | Priya  | 45000  | 20     | HR        |
| 103   | Arun   | 30000  | 10     | IT        |
| 104   | Kaviya | 55000  | 30     | Finance   |
| 105   | Siva   | 35000  | 50     | NULL      |
| NULL  | NULL   | NULL   | NULL   | Marketing |
+-------+--------+--------+--------+-----------+

Q13. Display employees whose name starts with R.

Answer:

SELECT E.ENAME,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE E.ENAME LIKE 'R%'

UNION

SELECT E.ENAME,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE E.ENAME LIKE 'R%';

Table Answer:

+-------+----------+
| ENAME | DEPTNAME |
+-------+----------+
| Ravi  | IT       |
+-------+----------+

Q14. Display all unmatched employees and unmatched departments.

Answer:

SELECT E.EMPID,E.ENAME,D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE D.DEPTID IS NULL

UNION

SELECT E.EMPID,E.ENAME,D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID
WHERE E.EMPID IS NULL;

Table Answer:

+-------+-------+-----------+
| EMPID | ENAME | DEPTNAME  |
+-------+-------+-----------+
| 105   | Siva  | NULL      |
| NULL  | NULL  | Marketing |
+-------+-------+-----------+

Q15. Display complete employee and department information.

Answer:

SELECT E.EMPID,
       E.ENAME,
       E.DEPTID,
       E.SALARY,
       D.DEPTID AS D_DEPTID,
       D.DEPTNAME
FROM EINFO E
LEFT JOIN EDEPT D
ON E.DEPTID=D.DEPTID

UNION

SELECT E.EMPID,
       E.ENAME,
       E.DEPTID,
       E.SALARY,
       D.DEPTID AS D_DEPTID,
       D.DEPTNAME
FROM EINFO E
RIGHT JOIN EDEPT D
ON E.DEPTID=D.DEPTID;

Table Answer:

+-------+--------+--------+--------+-----------+-----------+
| EMPID | ENAME  | DEPTID | SALARY | D_DEPTID  | DEPTNAME  |
+-------+--------+--------+--------+-----------+-----------+
| 101   | Ravi   | 10     | 60000  | 10        | IT        |
| 102   | Priya  | 20     | 45000  | 20        | HR        |
| 103   | Arun   | 10     | 30000  | 10        | IT        |
| 104   | Kaviya | 30     | 55000  | 30        | Finance   |
| 105   | Siva   | 50     | 35000  | NULL      | NULL      |
| NULL  | NULL   | NULL   | NULL   | 40        | Marketing |
+-------+--------+--------+--------+-----------+-----------+