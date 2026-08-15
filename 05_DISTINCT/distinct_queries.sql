-- 06. DISTINCT
-- HR.DEPARTMENTS

USE HR;


Q1. Display unique location IDs from HR.DEPARTMENTS.

Answer:

SELECT DISTINCT LOCATION_ID
FROM HR.DEPARTMENTS;

Table Answer:

LOCATION_ID
1700
1800
2400
2500
2700


Q2. Display unique manager IDs from HR.DEPARTMENTS.

Answer:

SELECT DISTINCT MANAGER_ID
FROM HR.DEPARTMENTS;

Table Answer:

MANAGER_ID
100
102
103
108
109
110
...


Q3. Display unique department names from HR.DEPARTMENTS.

Answer:

SELECT DISTINCT DEPARTMENT_NAME
FROM HR.DEPARTMENTS;

Table Answer:

DEPARTMENT_NAME
Administration
Marketing
Purchasing
Human Resources
Shipping
IT
...


Q4. Display unique department IDs from HR.DEPARTMENTS.

Answer:

SELECT DISTINCT DEPARTMENT_ID
FROM HR.DEPARTMENTS;

Table Answer:

DEPARTMENT_ID
10
20
30
40
50
...


Q5. Display unique location IDs in ascending order.

Answer:

SELECT DISTINCT LOCATION_ID
FROM HR.DEPARTMENTS
ORDER BY LOCATION_ID ASC;

Table Answer:

LOCATION_ID
1700
1800
2400
2500
2700


Q6. Display unique location IDs in descending order.

Answer:

SELECT DISTINCT LOCATION_ID
FROM HR.DEPARTMENTS
ORDER BY LOCATION_ID DESC;

Table Answer:

LOCATION_ID
2700
2500
2400
1800
1700


Q7. Display unique manager IDs in ascending order.

Answer:

SELECT DISTINCT MANAGER_ID
FROM HR.DEPARTMENTS
ORDER BY MANAGER_ID ASC;

Table Answer:

MANAGER_ID
100
102
103
108
109
...


Q8. Display unique department names sorted alphabetically.

Answer:

SELECT DISTINCT DEPARTMENT_NAME
FROM HR.DEPARTMENTS
ORDER BY DEPARTMENT_NAME ASC;

Table Answer:

DEPARTMENT_NAME
Accounting
Administration
Executive
Finance
Human Resources
...


Q9. Display unique combinations of manager ID and location ID.

Answer:

SELECT DISTINCT MANAGER_ID, LOCATION_ID
FROM HR.DEPARTMENTS;

Table Answer:

MANAGER_ID | LOCATION_ID
100         | 1700
102         | 1800
103         | 1700
108         | 2400
...


Q10. Display unique combinations of department name and location ID.

Answer:

SELECT DISTINCT DEPARTMENT_NAME, LOCATION_ID
FROM HR.DEPARTMENTS;

Table Answer:

DEPARTMENT_NAME | LOCATION_ID
Administration  | 1700
Marketing       | 1800
Purchasing      | 1700
Human Resources | 2400
Shipping        | 1500
...


Q11. Display unique manager IDs where manager ID is not NULL.

Answer:

SELECT DISTINCT MANAGER_ID
FROM HR.DEPARTMENTS
WHERE MANAGER_ID IS NOT NULL;

Table Answer:

MANAGER_ID
100
102
103
108
109
...


Q12. Display unique location IDs greater than 1800.

Answer:

SELECT DISTINCT LOCATION_ID
FROM HR.DEPARTMENTS
WHERE LOCATION_ID > 1800;

Table Answer:

LOCATION_ID
2400
2500
2700


Q13. Display unique location IDs between 1700 and 2500.

Answer:

SELECT DISTINCT LOCATION_ID
FROM HR.DEPARTMENTS
WHERE LOCATION_ID BETWEEN 1700 AND 2500;

Table Answer:

LOCATION_ID
1700
1800
2400
2500


Q14. Display unique department names whose department ID is greater than 50.

Answer:

SELECT DISTINCT DEPARTMENT_NAME
FROM HR.DEPARTMENTS
WHERE DEPARTMENT_ID > 50;

Table Answer:

DEPARTMENT_NAME
Shipping
IT
Public Relations
Sales
Executive
...


Q15. Display unique location IDs and show only the first 3 results.

Answer:

SELECT DISTINCT LOCATION_ID
FROM HR.DEPARTMENTS
ORDER BY LOCATION_ID
LIMIT 3;

Table Answer:

LOCATION_ID
1700
1800
2400