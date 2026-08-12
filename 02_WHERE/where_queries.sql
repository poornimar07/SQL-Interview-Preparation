Q1. Display employees who work in the IT department.

Answer:

SELECT *
FROM EMP
WHERE DEPT = 'IT';

Table Answer:

EMPID | ENAME | DEPT
101   | Ravi  | IT


Q2. Display employees whose salary is greater than 30000.

Answer:

SELECT *
FROM EMP
WHERE SALARY > 30000;

Table Answer:

EMPID | ENAME | SALARY
101   | Ravi  | 35000.00
103   | Arun  | 45000.00


Q3. Display employees whose salary is less than 40000.

Answer:

SELECT *
FROM EMP
WHERE SALARY < 40000;

Table Answer:

EMPID | ENAME | SALARY
101   | Ravi  | 35000.00
102   | Priya | 30000.00


Q4. Display employees whose salary is exactly 35000.

Answer:

SELECT *
FROM EMP
WHERE SALARY = 35000;

Table Answer:

EMPID | ENAME | SALARY
101   | Ravi  | 35000.00


Q5. Display employees who work in the HR department.

Answer:

SELECT *
FROM EMP
WHERE DEPT = 'HR';

Table Answer:

EMPID | ENAME | DEPT
102   | Priya | HR


Q6. Display employees who are located in Chennai.

Answer:

SELECT *
FROM EMP
WHERE LOCATION = 'Chennai';

Table Answer:

EMPID | ENAME | LOCATION
101   | Ravi  | Chennai
102   | Priya | Chennai


Q7. Display employees whose gender is FEMALE.

Answer:

SELECT *
FROM EMP
WHERE GENDER = 'FEMALE';

Table Answer:

EMPID | ENAME | GENDER
102   | Priya | FEMALE


Q8. Display employees whose designation is MANAGER.

Answer:

SELECT *
FROM EMP
WHERE DESIG = 'Manager';

Table Answer:

EMPID | ENAME | DESIG
103   | Arun  | Manager


Q9. Display employees who joined the company after 2022-01-01.

Answer:

SELECT *
FROM EMP
WHERE DOJOIN > '2022-01-01';

Table Answer:

EMPID | ENAME | DOJOIN
101   | Ravi  | 2023-01-10
102   | Priya | 2022-06-15


Q10. Display employees whose salary is between 25000 and 50000.

Answer:

SELECT *
FROM EMP
WHERE SALARY BETWEEN 25000 AND 50000;

Table Answer:

EMPID | ENAME | SALARY
101   | Ravi  | 35000.00
102   | Priya | 30000.00
103   | Arun  | 45000.00


Q11. Display employees who work in either the IT or Sales department.

Answer:

SELECT *
FROM EMP
WHERE DEPT = 'IT'
   OR DEPT = 'Sales';

Table Answer:

EMPID | ENAME | DEPT
101   | Ravi  | IT
103   | Arun  | Sales


Q12. Display employees who are located in either Chennai or Bangalore.

Answer:

SELECT *
FROM EMP
WHERE LOCATION = 'Chennai'
   OR LOCATION = 'Bangalore';

Table Answer:

EMPID | ENAME | LOCATION
101   | Ravi  | Chennai
102   | Priya | Chennai


Q13. Display employees whose salary is greater than or equal to 30000.

Answer:

SELECT *
FROM EMP
WHERE SALARY >= 30000;

Table Answer:

EMPID | ENAME | SALARY
101   | Ravi  | 35000.00
102   | Priya | 30000.00
103   | Arun  | 45000.00


Q14. Display employees who are not working in the HR department.

Answer:

SELECT *
FROM EMP
WHERE DEPT <> 'HR';

Table Answer:

EMPID | ENAME | DEPT
101   | Ravi  | IT
103   | Arun  | Sales


Q15. Display employees whose salary is not equal to 30000.

Answer:

SELECT *
FROM EMP
WHERE SALARY <> 30000;

Table Answer:

EMPID | ENAME | SALARY
101   | Ravi  | 35000.00
103   | Arun  | 45000.00