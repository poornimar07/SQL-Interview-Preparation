

Q1. Display each employee and their manager name.

Answer:

SELECT E.ENAME AS EMPLOYEE,
       M.ENAME AS MANAGER
FROM EINFO E
LEFT JOIN EINFO M
ON E.MANAGERID = M.EMPID;

Table Answer:

+----------+---------+
| EMPLOYEE | MANAGER |
+----------+---------+
| Ravi     | NULL    |
| Priya    | Ravi    |
| Arun     | Ravi    |
| Kaviya   | Priya   |
| Siva     | Priya   |
| Meena    | Arun    |
+----------+---------+


Q2. Display employee name and manager name only for employees who have a manager.

Answer:

SELECT E.ENAME AS EMPLOYEE,
       M.ENAME AS MANAGER
FROM EINFO E
INNER JOIN EINFO M
ON E.MANAGERID = M.EMPID;

Table Answer:

+----------+---------+
| EMPLOYEE | MANAGER |
+----------+---------+
| Priya    | Ravi    |
| Arun     | Ravi    |
| Kaviya   | Priya   |
| Siva     | Priya   |
| Meena    | Arun    |
+----------+---------+


Q3. Display employees who report directly to Ravi.

Answer:

SELECT E.EMPID,
       E.ENAME
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID
WHERE M.ENAME = 'Ravi';

Table Answer:

+-------+-------+
| EMPID | ENAME |
+-------+-------+
| 102   | Priya |
| 103   | Arun  |
+-------+-------+

Q4. Display employees whose salary is greater than their manager's salary.

Answer:

SELECT E.ENAME AS EMPLOYEE,
       E.SALARY AS EMPLOYEE_SALARY,
       M.ENAME AS MANAGER,
       M.SALARY AS MANAGER_SALARY
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID
WHERE E.SALARY > M.SALARY;

Table Answer:

+----------+-----------------+---------+-----------------+
| EMPLOYEE | EMPLOYEE_SALARY | MANAGER | MANAGER_SALARY  |
+----------+-----------------+---------+-----------------+
| Meena    | 55000           | Arun   | 45000           |
+----------+-----------------+---------+-----------------+

Q5. Display employees whose salary is less than their manager's salary.

Answer:

SELECT E.ENAME AS EMPLOYEE,
       E.SALARY AS EMPLOYEE_SALARY,
       M.ENAME AS MANAGER,
       M.SALARY AS MANAGER_SALARY
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID
WHERE E.SALARY < M.SALARY;

Table Answer:

+----------+-----------------+---------+----------------+
| EMPLOYEE | EMPLOYEE_SALARY | MANAGER | MANAGER_SALARY |
+----------+-----------------+---------+----------------+
| Priya    | 50000           | Ravi    | 70000          |
| Arun     | 45000           | Ravi    | 70000          |
| Kaviya   | 40000           | Priya   | 50000          |
| Siva     | 35000           | Priya   | 50000          |
+----------+-----------------+---------+----------------+


Q6. Display employees and their manager IDs.

Answer:

SELECT E.ENAME,
       E.MANAGERID,
       M.ENAME AS MANAGER
FROM EINFO E
LEFT JOIN EINFO M
ON E.MANAGERID = M.EMPID;

Table Answer:

+--------+-----------+---------+
| ENAME  | MANAGERID | MANAGER |
+--------+-----------+---------+
| Ravi   | NULL      | NULL    |
| Priya  | 101       | Ravi    |
| Arun   | 101       | Ravi    |
| Kaviya | 102       | Priya   |
| Siva   | 102       | Priya   |
| Meena  | 103       | Arun    |
+--------+-----------+---------+


Q7. Find employees who have the same manager.

Answer:

SELECT E1.ENAME AS EMPLOYEE1,
       E2.ENAME AS EMPLOYEE2,
       E1.MANAGERID
FROM EINFO E1
JOIN EINFO E2
ON E1.MANAGERID = E2.MANAGERID
AND E1.EMPID < E2.EMPID
WHERE E1.MANAGERID IS NOT NULL;

Table Answer:

+-----------+-----------+-----------+
| EMPLOYEE1 | EMPLOYEE2 | MANAGERID |
+-----------+-----------+-----------+
| Priya     | Arun      | 101       |
| Kaviya    | Siva      | 102       |
+-----------+-----------+-----------+


Q8. Find managers who have more than one employee reporting to them.

Answer:

SELECT M.ENAME AS MANAGER,
       COUNT(E.EMPID) AS EMPLOYEE_COUNT
FROM EINFO M
JOIN EINFO E
ON M.EMPID = E.MANAGERID
GROUP BY M.EMPID,M.ENAME
HAVING COUNT(E.EMPID) > 1;

Table Answer:

+---------+----------------+
| MANAGER | EMPLOYEE_COUNT |
+---------+----------------+
| Ravi    | 2              |
| Priya   | 2              |
+---------+----------------+


Q9. Display employee and manager department IDs.

Answer:

SELECT E.ENAME AS EMPLOYEE,
       E.DEPTID AS EMP_DEPTID,
       M.ENAME AS MANAGER,
       M.DEPTID AS MANAGER_DEPTID
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID;

Table Answer:

+----------+------------+---------+------------------+
| EMPLOYEE | EMP_DEPTID | MANAGER | MANAGER_DEPTID   |
+----------+------------+---------+------------------+
| Priya    | 10         | Ravi    | 10               |
| Arun     | 10         | Ravi    | 10               |
| Kaviya   | 20         | Priya   | 10               |
| Siva     | 20         | Priya   | 10               |
| Meena    | 30         | Arun    | 10               |
+----------+------------+---------+------------------+


Q10. Display employees who belong to the same department as their manager.

Answer:

SELECT E.ENAME AS EMPLOYEE,
       M.ENAME AS MANAGER,
       E.DEPTID
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID
WHERE E.DEPTID = M.DEPTID;

Table Answer:

+----------+---------+--------+
| EMPLOYEE | MANAGER | DEPTID |
+----------+---------+--------+
| Priya    | Ravi    | 10     |
| Arun     | Ravi    | 10     |
| Kaviya   | Priya   | 20     |
| Siva     | Priya   | 20     |
+----------+---------+--------+


Q11. Display employees who belong to a different department from their manager.

Answer:

SELECT E.ENAME AS EMPLOYEE,
       M.ENAME AS MANAGER,
       E.DEPTID AS EMP_DEPTID,
       M.DEPTID AS MANAGER_DEPTID
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID
WHERE E.DEPTID <> M.DEPTID;

Table Answer:

+----------+---------+------------+------------------+
| EMPLOYEE | MANAGER | EMP_DEPTID | MANAGER_DEPTID   |
+----------+---------+------------+------------------+
| Kaviya   | Priya   | 20         | 10               |
| Siva     | Priya   | 20         | 10               |
| Meena    | Arun    | 30         | 10               |
+----------+---------+------------+------------------+


Q12. Display the highest-paid employee under each manager.

Answer:

SELECT E.ENAME AS EMPLOYEE,
       E.SALARY,
       M.ENAME AS MANAGER
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID
WHERE E.SALARY = (
    SELECT MAX(E2.SALARY)
    FROM EINFO E2
    WHERE E2.MANAGERID = E.MANAGERID
);

Table Answer:

+----------+--------+---------+
| EMPLOYEE | SALARY | MANAGER |
+----------+--------+---------+
| Priya    | 50000  | Ravi    |
| Kaviya   | 40000  | Priya   |
| Meena    | 55000  | Arun    |
+----------+--------+---------+


Q13. Display managers and their employees ordered by manager name.

Answer:

SELECT M.ENAME AS MANAGER,
       E.ENAME AS EMPLOYEE
FROM EINFO M
JOIN EINFO E
ON M.EMPID = E.MANAGERID
ORDER BY M.ENAME;

Table Answer:

+---------+----------+
| MANAGER | EMPLOYEE |
+---------+----------+
| Arun    | Meena    |
| Priya   | Kaviya   |
| Priya   | Siva     |
| Ravi    | Priya    |
| Ravi    | Arun     |
+---------+----------+


Q14. Display employees whose manager earns more than 60000.

Answer:

SELECT E.ENAME AS EMPLOYEE,
       E.SALARY,
       M.ENAME AS MANAGER,
       M.SALARY AS MANAGER_SALARY
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID
WHERE M.SALARY > 60000;

Table Answer:

+----------+--------+---------+----------------+
| EMPLOYEE | SALARY | MANAGER | MANAGER_SALARY |
+----------+--------+---------+----------------+
| Priya    | 50000  | Ravi    | 70000          |
| Arun     | 45000  | Ravi    | 70000          |
+----------+--------+---------+----------------+

Q15. Display manager name, number of employees reporting to them, and total salary of those employees.

Answer:

SELECT M.ENAME AS MANAGER,
       COUNT(E.EMPID) AS EMPLOYEE_COUNT,
       SUM(E.SALARY) AS TOTAL_EMPLOYEE_SALARY
FROM EINFO M
JOIN EINFO E
ON M.EMPID = E.MANAGERID
GROUP BY M.EMPID,M.ENAME;

Table Answer:

+---------+----------------+-----------------------+
| MANAGER | EMPLOYEE_COUNT | TOTAL_EMPLOYEE_SALARY |
+---------+----------------+-----------------------+
| Ravi    | 2              | 95000                 |
| Priya   | 2              | 75000                 |
| Arun    | 1              | 55000                 |
+---------+----------------+-----------------------+