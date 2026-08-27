
Q1. Display every customer with every department.

SELECT C.CUSTOMERNAME,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D;

Table Answer:

+--------------+-----------+
| CUSTOMERNAME | DEPTNAME  |
+--------------+-----------+
| Ravi         | IT        |
| Ravi         | HR        |
| Ravi         | Finance   |
| Ravi         | Marketing |
| Priya        | IT        |
| Priya        | HR        |
| Priya        | Finance   |
| Priya        | Marketing |
| Arun         | IT        |
| Arun         | HR        |
| Arun         | Finance   |
| Arun         | Marketing |
| Kaviya       | IT        |
| Kaviya       | HR        |
| Kaviya       | Finance   |
| Kaviya       | Marketing |
| Siva         | IT        |
| Siva         | HR        |
| Siva         | Finance   |
| Siva         | Marketing |
+--------------+-----------+


Q2. Display customer ID, customer name and every department name.

Answer:

SELECT C.CUSTOMERID,C.CUSTOMERNAME,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D;

Table Answer:

+------------+--------------+-----------+
| CUSTOMERID | CUSTOMERNAME | DEPTNAME  |
+------------+--------------+-----------+
| 101        | Ravi         | IT        |
| 101        | Ravi         | HR        |
| 101        | Ravi         | Finance   |
| 101        | Ravi         | Marketing |
| 102        | Priya        | IT        |
| 102        | Priya        | HR        |
| 102        | Priya        | Finance   |
| 102        | Priya        | Marketing |
| 103        | Arun         | IT        |
| 103        | Arun         | HR        |
| 103        | Arun         | Finance   |
| 103        | Arun         | Marketing |
| 104        | Kaviya       | IT        |
| 104        | Kaviya       | HR        |
| 104        | Kaviya       | Finance   |
| 104        | Kaviya       | Marketing |
| 105        | Siva         | IT        |
| 105        | Siva         | HR        |
| 105        | Siva         | Finance   |
| 105        | Siva         | Marketing |
+------------+--------------+-----------+


Q3. Display every customer with every department ID.

Answer:

SELECT C.CUSTOMERNAME,D.DEPTID
FROM CUSTOMER C
CROSS JOIN EDEPT D;

Table Answer:

+--------------+--------+
| CUSTOMERNAME | DEPTID |
+--------------+--------+
| Ravi         | 10     |
| Ravi         | 20     |
| Ravi         | 30     |
| Ravi         | 40     |
| Priya        | 10     |
| Priya        | 20     |
| Priya        | 30     |
| Priya        | 40     |
| Arun         | 10     |
| Arun         | 20     |
| Arun         | 30     |
| Arun         | 40     |
| Kaviya       | 10     |
| Kaviya       | 20     |
| Kaviya       | 30     |
| Kaviya       | 40     |
| Siva         | 10     |
| Siva         | 20     |
| Siva         | 30     |
| Siva         | 40     |
+--------------+--------+


Q4. Display every customer with every department name and city.

Answer:

SELECT C.CUSTOMERNAME,C.CITY,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D;

Table Answer:

+--------------+---------+-----------+
| CUSTOMERNAME | CITY    | DEPTNAME  |
+--------------+---------+-----------+
| Ravi         | Chennai | IT        |
| Ravi         | Chennai | HR        |
| Ravi         | Chennai | Finance   |
| Ravi         | Chennai | Marketing |
| Priya        | Chennai | IT        |
| Priya        | Chennai | HR        |
| Priya        | Chennai | Finance   |
| Priya        | Chennai | Marketing |
| Arun         | Madurai | IT        |
| Arun         | Madurai | HR        |
| Arun         | Madurai | Finance   |
| Arun         | Madurai | Marketing |
| Kaviya       | Salem   | IT        |
| Kaviya       | Salem   | HR        |
| Kaviya       | Salem   | Finance   |
| Kaviya       | Salem   | Marketing |
| Siva         | Trichy  | IT        |
| Siva         | Trichy  | HR        |
| Siva         | Trichy  | Finance   |
| Siva         | Trichy  | Marketing |
+--------------+---------+-----------+


Q5. Display all combinations of customer names and department names for Chennai customers.

Answer:

SELECT C.CUSTOMERNAME,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D
WHERE C.CITY='Chennai';

Table Answer:

+--------------+-----------+
| CUSTOMERNAME | DEPTNAME  |
+--------------+-----------+
| Ravi         | IT        |
| Ravi         | HR        |
| Ravi         | Finance   |
| Ravi         | Marketing |
| Priya        | IT        |
| Priya        | HR        |
| Priya        | Finance   |
| Priya        | Marketing |
+--------------+-----------+


Q6. Display every customer with IT and HR departments only.

Answer:

SELECT C.CUSTOMERNAME,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D
WHERE D.DEPTNAME IN ('IT','HR');

Table Answer:

+--------------+----------+
| CUSTOMERNAME | DEPTNAME |
+--------------+----------+
| Ravi         | IT       |
| Ravi         | HR       |
| Priya        | IT       |
| Priya        | HR       |
| Arun         | IT       |
| Arun         | HR       |
| Kaviya       | IT       |
| Kaviya       | HR       |
| Siva         | IT       |
| Siva         | HR       |
+--------------+----------+


Q7. Display all combinations for customers whose ID is greater than 102.

Answer:

SELECT C.CUSTOMERID,C.CUSTOMERNAME,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D
WHERE C.CUSTOMERID>102;

Table Answer:

+------------+--------------+-----------+
| CUSTOMERID | CUSTOMERNAME | DEPTNAME  |
+------------+--------------+-----------+
| 103        | Arun         | IT        |
| 103        | Arun         | HR        |
| 103        | Arun         | Finance   |
| 103        | Arun         | Marketing |
| 104        | Kaviya       | IT        |
| 104        | Kaviya       | HR        |
| 104        | Kaviya       | Finance   |
| 104        | Kaviya       | Marketing |
| 105        | Siva         | IT        |
| 105        | Siva         | HR        |
| 105        | Siva         | Finance   |
| 105        | Siva         | Marketing |
+------------+--------------+-----------+


Q8. Display all customer and department combinations ordered by customer name.

Answer:

SELECT C.CUSTOMERNAME,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D
ORDER BY C.CUSTOMERNAME;

Table Answer:

+--------------+-----------+
| CUSTOMERNAME | DEPTNAME  |
+--------------+-----------+
| Arun         | IT        |
| Arun         | HR        |
| Arun         | Finance   |
| Arun         | Marketing |
| Kaviya       | IT        |
| Kaviya       | HR        |
| Kaviya       | Finance   |
| Kaviya       | Marketing |
| Priya        | IT        |
| Priya        | HR        |
| Priya        | Finance   |
| Priya        | Marketing |
| Ravi         | IT        |
| Ravi         | HR        |
| Ravi         | Finance   |
| Ravi         | Marketing |
| Siva         | IT        |
| Siva         | HR        |
| Siva         | Finance   |
| Siva         | Marketing |
+--------------+-----------+


Q9. Display every customer with every department except Marketing.

Answer:

SELECT C.CUSTOMERNAME,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D
WHERE D.DEPTNAME<>'Marketing';

Table Answer:

+--------------+----------+
| CUSTOMERNAME | DEPTNAME |
+--------------+----------+
| Ravi         | IT       |
| Ravi         | HR       |
| Ravi         | Finance  |
| Priya        | IT       |
| Priya        | HR       |
| Priya        | Finance  |
| Arun         | IT       |
| Arun         | HR       |
| Arun         | Finance  |
| Kaviya       | IT       |
| Kaviya       | HR       |
| Kaviya       | Finance  |
| Siva         | IT       |
| Siva         | HR       |
| Siva         | Finance  |
+--------------+----------+


Q10. Count the total number of customer-department combinations.

Answer:

SELECT COUNT(*) AS TOTAL_COMBINATIONS
FROM CUSTOMER C
CROSS JOIN EDEPT D;

Table Answer:

+--------------------+
| TOTAL_COMBINATIONS |
+--------------------+
| 20                 |
+--------------------+


Q11. Display customer names with every department ID greater than 20.

Answer:

SELECT C.CUSTOMERNAME,D.DEPTID
FROM CUSTOMER C
CROSS JOIN EDEPT D
WHERE D.DEPTID>20;

Table Answer:

+--------------+--------+
| CUSTOMERNAME | DEPTID |
+--------------+--------+
| Ravi         | 30     |
| Ravi         | 40     |
| Priya        | 30     |
| Priya        | 40     |
| Arun         | 30     |
| Arun         | 40     |
| Kaviya       | 30     |
| Kaviya       | 40     |
| Siva         | 30     |
| Siva         | 40     |
+--------------+--------+


Q12. Display combinations of customers from Chennai and departments from IT or Finance.

Answer:

SELECT C.CUSTOMERNAME,C.CITY,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D
WHERE C.CITY='Chennai'
AND D.DEPTNAME IN ('IT','Finance');

Table Answer:

+--------------+---------+----------+
| CUSTOMERNAME | CITY    | DEPTNAME |
+--------------+---------+----------+
| Ravi         | Chennai | IT       |
| Ravi         | Chennai | Finance  |
| Priya        | Chennai | IT       |
| Priya        | Chennai | Finance  |
+--------------+---------+----------+


Q13. Display every customer with departments whose ID is 10 or 30.

Answer:

SELECT C.CUSTOMERNAME,D.DEPTID,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D
WHERE D.DEPTID IN (10,30);

Table Answer:

+--------------+--------+----------+
| CUSTOMERNAME | DEPTID | DEPTNAME |
+--------------+--------+----------+
| Ravi         | 10     | IT       |
| Ravi         | 30     | Finance  |
| Priya        | 10     | IT       |
| Priya        | 30     | Finance  |
| Arun         | 10     | IT       |
| Arun         | 30     | Finance  |
| Kaviya       | 10     | IT       |
| Kaviya       | 30     | Finance  |
| Siva         | 10     | IT       |
| Siva         | 30     | Finance  |
+--------------+--------+----------+


Q14. Display all customer-department combinations where the customer is not from Chennai.

Answer:

SELECT C.CUSTOMERNAME,C.CITY,D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D
WHERE C.CITY<>'Chennai';

Table Answer:

+--------------+---------+-----------+
| CUSTOMERNAME | CITY    | DEPTNAME  |
+--------------+---------+-----------+
| Arun         | Madurai | IT        |
| Arun         | Madurai | HR        |
| Arun         | Madurai | Finance   |
| Arun         | Madurai | Marketing |
| Kaviya       | Salem   | IT        |
| Kaviya       | Salem   | HR        |
| Kaviya       | Salem   | Finance   |
| Kaviya       | Salem   | Marketing |
| Siva         | Trichy  | IT        |
| Siva         | Trichy  | HR        |
| Siva         | Trichy  | Finance   |
| Siva         | Trichy  | Marketing |
+--------------+---------+-----------+


Q15. Display customer name, city, department ID and department name for every possible combination.

Answer:

SELECT C.CUSTOMERNAME,
       C.CITY,
       D.DEPTID,
       D.DEPTNAME
FROM CUSTOMER C
CROSS JOIN EDEPT D;

Table Answer:

+--------------+---------+--------+-----------+
| CUSTOMERNAME | CITY    | DEPTID | DEPTNAME  |
+--------------+---------+--------+-----------+
| Ravi         | Chennai | 10     | IT        |
| Ravi         | Chennai | 20     | HR        |
| Ravi         | Chennai | 30     | Finance   |
| Ravi         | Chennai | 40     | Marketing |
| Priya        | Chennai | 10     | IT        |
| Priya        | Chennai | 20     | HR        |
| Priya        | Chennai | 30     | Finance   |
| Priya        | Chennai | 40     | Marketing |
| Arun         | Madurai | 10     | IT        |
| Arun         | Madurai | 20     | HR        |
| Arun         | Madurai | 30     | Finance   |
| Arun         | Madurai | 40     | Marketing |
| Kaviya       | Salem   | 10     | IT        |
| Kaviya       | Salem   | 20     | HR        |
| Kaviya       | Salem   | 30     | Finance   |
| Kaviya       | Salem   | 40     | Marketing |
| Siva         | Trichy  | 10     | IT        |
| Siva         | Trichy  | 20     | HR        |
| Siva         | Trichy  | 30     | Finance   |
| Siva         | Trichy  | 40     | Marketing |
+--------------+---------+--------+-----------+