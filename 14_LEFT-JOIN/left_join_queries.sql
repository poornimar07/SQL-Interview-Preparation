
Q1. Display all employees with their department names.

Answer:

SELECT E.EMPID, E.ENAME, E.DEPTID, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
LEFT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+-------+---------+--------+--------+------------+
| EMPID | ENAME   | DEPTID | SALARY | DEPTNAME   |
+-------+---------+--------+--------+------------+
| 101   | Ravi    | 10     | 60000  | IT         |
| 102   | Priya   | 20     | 45000  | HR         |
| 103   | Arun    | 10     | 30000  | IT         |
| 104   | Kaviya  | 30     | 55000  | Finance    |
| 105   | Siva    | 50     | 35000  | NULL       |
+-------+---------+--------+--------+------------+


Q2. Display all employees, including employees who do not have a matching department.

Answer:

SELECT E.ENAME, E.DEPTID, D.DEPTNAME
FROM EMP_JOIN E
LEFT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+---------+--------+------------+
| ENAME   | DEPTID | DEPTNAME   |
+---------+--------+------------+
| Ravi    | 10     | IT         |
| Priya   | 20     | HR         |
| Arun    | 10     | IT         |
| Kaviya  | 30     | Finance    |
| Siva    | 50     | NULL       |
+---------+--------+------------+


Q3. Display employees whose department name is NULL.

Answer:

SELECT E.EMPID, E.ENAME, E.DEPTID
FROM EMP_JOIN E
LEFT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE D.DEPTID IS NULL;

Table Answer:

+-------+-------+--------+
| EMPID | ENAME | DEPTID |
+-------+-------+--------+
| 105   | Siva  | 50     |
+-------+-------+--------+


Q4. Display all employees with salary greater than 40000 and their department names.

Answer:

SELECT E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
LEFT JOIN EDEPT D
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


Q5. Display all employees whose department is IT.

Answer:

SELECT E.EMPID, E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
LEFT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE D.DEPTNAME = 'IT';

Table Answer:

+-------+-------+--------+----------+
| EMPID | ENAME | SALARY | DEPTNAME |
+-------+-------+--------+----------+
| 101   | Ravi  | 60000  | IT       |
| 103   | Arun  | 30000  | IT       |
+-------+-------+--------+----------+


Q6. Display all employees and their department names ordered by salary.

Answer:

SELECT E.EMPID, E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
LEFT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
ORDER BY E.SALARY DESC;

Table Answer:

+-------+---------+--------+------------+
| EMPID | ENAME   | SALARY | DEPTNAME   |
+-------+---------+--------+------------+
| 101   | Ravi    | 60000  | IT         |
| 104   | Kaviya  | 55000  | Finance    |
| 102   | Priya   | 45000  | HR         |
| 105   | Siva    | 35000  | NULL       |
| 103   | Arun    | 30000  | IT         |
+-------+---------+--------+------------+


Q7. Display employee name, department ID, and department name for all employees.

Answer:

SELECT E.ENAME, E.DEPTID, D.DEPTNAME
FROM EMP_JOIN E
LEFT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+---------+--------+------------+
| ENAME   | DEPTID | DEPTNAME   |
+---------+--------+------------+
| Ravi    | 10     | IT         |
| Priya   | 20     | HR         |
| Arun    | 10     | IT         |
| Kaviya  | 30     | Finance    |
| Siva    | 50     | NULL       |
+---------+--------+------------+


Q8. Display employees whose salary is between 30000 and 50000.

Answer:

SELECT E.ENAME, E.SALARY, D.DEPTNAME
FROM EMP_JOIN E
LEFT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE E.SALARY BETWEEN 30000 AND 50000;

Table Answer:

+---------+--------+----------+
| ENAME   | SALARY | DEPTNAME |
+---------+--------+----------+
| Priya   | 45000  | HR       |
| Arun    | 30000  | IT       |
| Siva    | 35000  | NULL     |
+---------+--------+----------+


Q9. Display employees who do not have a matching department.

Answer:

SELECT E.EMPID, E.ENAME, E.DEPTID, D.DEPTNAME
FROM EMP_JOIN E
LEFT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID
WHERE D.DEPTID IS NULL;

Table Answer:

+-------+-------+--------+----------+
| EMPID | ENAME | DEPTID | DEPTNAME |
+-------+-------+--------+----------+
| 105   | Siva  | 50     | NULL     |
+-------+-------+--------+----------+


Q10. Display all employees with a label showing whether their department exists.

Answer:

SELECT E.EMPID,
       E.ENAME,
       E.DEPTID,
       D.DEPTNAME,
       CASE
           WHEN D.DEPTID IS NULL THEN 'NO DEPARTMENT'
           ELSE 'DEPARTMENT EXISTS'
       END AS DEPARTMENT_STATUS
FROM EMP_JOIN E
LEFT JOIN EDEPT D
    ON E.DEPTID = D.DEPTID;

Table Answer:

+-------+---------+--------+------------+-------------------+
| EMPID | ENAME   | DEPTID | DEPTNAME   | DEPARTMENT_STATUS |
+-------+---------+--------+------------+-------------------+
| 101   | Ravi    | 10     | IT         | DEPARTMENT EXISTS |
| 102   | Priya   | 20     | HR         | DEPARTMENT EXISTS |
| 103   | Arun    | 10     | IT         | DEPARTMENT EXISTS |
| 104   | Kaviya  | 30     | Finance    | DEPARTMENT EXISTS |
| 105   | Siva    | 50     | NULL       | NO DEPARTMENT    |
+-------+---------+--------+------------+-------------------+