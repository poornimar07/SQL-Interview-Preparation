
Q1. Display employee name and classify salary as High or Low.

Answer:

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY >= 10000 THEN 'High'
           ELSE 'Low'
       END AS SALARY_LEVEL
FROM HR.EMPLOYEES;

Table Answer:

+------------+--------+--------------+
| FIRST_NAME | SALARY | SALARY_LEVEL |
+------------+--------+--------------+
| Steven     | 24000  | High         |
| Neena      | 17000  | High         |
| Lex        | 17000  | High         |
| Alexander  | 9000   | Low          |
| Bruce      | 6000   | Low          |
+------------+--------+--------------+

Q2. Display employee name and classify salary into High, Medium, and Low.

Answer:

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY >= 15000 THEN 'High'
           WHEN SALARY >= 8000 THEN 'Medium'
           ELSE 'Low'
       END AS SALARY_LEVEL
FROM HR.EMPLOYEES;

Table Answer:

+------------+--------+--------------+
| FIRST_NAME | SALARY | SALARY_LEVEL |
+------------+--------+--------------+
| Steven     | 24000  | High         |
| Neena      | 17000  | High         |
| Lex        | 17000  | High         |
| Alexander  | 9000   | Medium       |
| Bruce      | 6000   | Low          |
+------------+--------+--------------+

Q3. Display employee name and determine whether the employee earns a salary of at least 5000.

Answer:

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY >= 5000 THEN 'Eligible'
           ELSE 'Not Eligible'
       END AS SALARY_STATUS
FROM HR.EMPLOYEES;

Table Answer:

+------------+--------+---------------+
| FIRST_NAME | SALARY | SALARY_STATUS |
+------------+--------+---------------+
| Steven     | 24000  | Eligible      |
| Neena      | 17000  | Eligible      |
| Lex        | 17000  | Eligible      |
| Alexander  | 9000   | Eligible      |
| David      | 4800   | Not Eligible  |
+------------+--------+---------------+

Q4. Display employee name and classify employees based on department ID.

Answer:

SELECT FIRST_NAME, DEPARTMENT_ID,
       CASE
           WHEN DEPARTMENT_ID = 10 THEN 'Administration'
           WHEN DEPARTMENT_ID = 20 THEN 'Marketing'
           WHEN DEPARTMENT_ID = 30 THEN 'Purchasing'
           ELSE 'Other'
       END AS DEPARTMENT_TYPE
FROM HR.EMPLOYEES;

Table Answer:

+------------+---------------+------------------+
| FIRST_NAME | DEPARTMENT_ID | DEPARTMENT_TYPE  |
+------------+---------------+------------------+
| Steven     | 90            | Other            |
| Neena      | 90            | Other            |
| Lex        | 90            | Other            |
| Alexander  | 60            | Other            |
| Jennifer   | 10            | Administration   |
+------------+---------------+------------------+

Q5. Display employee name and classify employees based on salary.

Answer:

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY >= 15000 THEN 'Excellent'
           WHEN SALARY >= 8000 THEN 'Good'
           ELSE 'Needs Improvement'
       END AS PERFORMANCE
FROM HR.EMPLOYEES;

Table Answer:

+------------+--------+-------------------+
| FIRST_NAME | SALARY | PERFORMANCE       |
+------------+--------+-------------------+
| Steven     | 24000  | Excellent         |
| Neena      | 17000  | Excellent         |
| Lex        | 17000  | Excellent         |
| Alexander  | 9000   | Good              |
| Bruce      | 6000   | Needs Improvement |
+------------+--------+-------------------+

Q6. Display employee name and classify employees into Senior, Mid, and Junior levels.

Answer:

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY >= 12000 THEN 'Senior Level'
           WHEN SALARY >= 6000 THEN 'Mid Level'
           ELSE 'Junior Level'
       END AS EMPLOYEE_LEVEL
FROM HR.EMPLOYEES;

Table Answer:

+------------+--------+----------------+
| FIRST_NAME | SALARY | EMPLOYEE_LEVEL |
+------------+--------+----------------+
| Steven     | 24000  | Senior Level   |
| Neena      | 17000  | Senior Level   |
| Alexander  | 9000   | Mid Level      |
| Bruce      | 6000   | Mid Level      |
| David      | 4800   | Junior Level   |
+------------+--------+----------------+

Q7. Display employee name and show whether salary is above or below 10000.

Answer:

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY > 10000 THEN 'Above 10000'
           ELSE '10000 or Below'
       END AS SALARY_STATUS
FROM HR.EMPLOYEES;

Table Answer:

+------------+--------+----------------+
| FIRST_NAME | SALARY | SALARY_STATUS  |
+------------+--------+----------------+
| Steven     | 24000  | Above 10000    |
| Neena      | 17000  | Above 10000    |
| Lex        | 17000  | Above 10000    |
| Alexander  | 9000   | 10000 or Below |
| Bruce      | 6000   | 10000 or Below |
+------------+--------+----------------+

Q8. Display employee name and classify employees based on JOB_ID.

Answer:

SELECT FIRST_NAME, JOB_ID,
       CASE
           WHEN JOB_ID LIKE '%MAN%' THEN 'Manager'
           WHEN JOB_ID LIKE '%CLERK%' THEN 'Clerk'
           ELSE 'Other Job'
       END AS JOB_CATEGORY
FROM HR.EMPLOYEES;

Table Answer:

+------------+----------+--------------+
| FIRST_NAME | JOB_ID   | JOB_CATEGORY |
+------------+----------+--------------+
| Steven     | AD_PRES  | Other Job    |
| Neena      | AD_VP    | Other Job    |
| Lex        | AD_VP    | Other Job    |
| Alexander  | IT_PROG  | Other Job    |
| David      | IT_PROG  | Other Job    |
+------------+----------+--------------+

Q9. Display employee name and classify salary as High, Medium, or Low.

Answer:

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY >= 15000 THEN 'High'
           WHEN SALARY BETWEEN 8000 AND 14999 THEN 'Medium'
           WHEN SALARY < 8000 THEN 'Low'
           ELSE 'Unknown'
       END AS SALARY_CATEGORY
FROM HR.EMPLOYEES;

Table Answer:

+------------+--------+-----------------+
| FIRST_NAME | SALARY | SALARY_CATEGORY |
+------------+--------+-----------------+
| Steven     | 24000  | High            |
| Neena      | 17000  | High            |
| Alexander  | 9000   | Medium          |
| Bruce      | 6000   | Low             |
| David      | 4800   | Low             |
+------------+--------+-----------------+

Q10. Display employee name and identify whether the employee is a manager.

Answer:

SELECT FIRST_NAME, JOB_ID,
       CASE
           WHEN JOB_ID LIKE '%MAN%' THEN 'Manager'
           ELSE 'Non-Manager'
       END AS EMPLOYEE_TYPE
FROM HR.EMPLOYEES;

Table Answer:

+------------+----------+---------------+
| FIRST_NAME | JOB_ID   | EMPLOYEE_TYPE |
+------------+----------+---------------+
| Steven     | AD_PRES  | Non-Manager   |
| Neena      | AD_VP    | Non-Manager   |
| Lex        | AD_VP    | Non-Manager   |
| Alexander  | IT_PROG  | Non-Manager   |
| Jennifer   | AD_ASST  | Non-Manager   |
+------------+----------+---------------+

Q11. Display employee name and classify employees based on commission percentage.

Answer:

SELECT FIRST_NAME, COMMISSION_PCT,
       CASE
           WHEN COMMISSION_PCT IS NULL THEN 'No Commission'
           WHEN COMMISSION_PCT >= 0.20 THEN 'High Commission'
           ELSE 'Low Commission'
       END AS COMMISSION_STATUS
FROM HR.EMPLOYEES;

Table Answer:

+------------+-----------------+------------------+
| FIRST_NAME | COMMISSION_PCT  | COMMISSION_STATUS|
+------------+-----------------+------------------+
| Steven     | NULL            | No Commission    |
| Neena      | NULL            | No Commission    |
| Lex        | NULL            | No Commission    |
| John       | 0.20            | High Commission  |
| Karen      | 0.15            | Low Commission   |
+------------+-----------------+------------------+

Q12. Display employee name and classify employees based on hire date.

Answer:

SELECT FIRST_NAME, HIRE_DATE,
       CASE
           WHEN HIRE_DATE < DATE '2005-01-01' THEN 'Experienced'
           ELSE 'Recent Hire'
       END AS EXPERIENCE_TYPE
FROM HR.EMPLOYEES;

Table Answer:

+------------+------------+-----------------+
| FIRST_NAME | HIRE_DATE  | EXPERIENCE_TYPE |
+------------+------------+-----------------+
| Steven     | 2003-06-17 | Experienced     |
| Neena      | 2005-09-21 | Recent Hire     |
| Lex        | 2001-01-13 | Experienced     |
| Alexander  | 2006-01-03 | Recent Hire     |
+------------+------------+-----------------+

Q13. Display employee name and show whether salary is exactly 5000, above 5000, or below 5000.

Answer:

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY = 5000 THEN 'Exactly 5000'
           WHEN SALARY > 5000 THEN 'Above 5000'
           ELSE 'Below 5000'
       END AS SALARY_STATUS
FROM HR.EMPLOYEES;

Table Answer:

+------------+--------+---------------+
| FIRST_NAME | SALARY | SALARY_STATUS |
+------------+--------+---------------+
| Steven     | 24000  | Above 5000    |
| Neena      | 17000  | Above 5000    |
| Alexander  | 9000   | Above 5000    |
| David      | 4800   | Below 5000    |
| John       | 5000   | Exactly 5000  |
+------------+--------+---------------+

Q14. Display employee name and classify employees based on department ID.

Answer:

SELECT FIRST_NAME, DEPARTMENT_ID,
       CASE
           WHEN DEPARTMENT_ID = 10 THEN 'Department 10'
           WHEN DEPARTMENT_ID = 20 THEN 'Department 20'
           WHEN DEPARTMENT_ID = 30 THEN 'Department 30'
           ELSE 'Other Department'
       END AS DEPARTMENT_CATEGORY
FROM HR.EMPLOYEES;

Table Answer:

+------------+---------------+----------------------+
| FIRST_NAME | DEPARTMENT_ID | DEPARTMENT_CATEGORY  |
+------------+---------------+----------------------+
| Steven     | 90            | Other Department     |
| Neena      | 90            | Other Department     |
| Lex        | 90            | Other Department     |
| Jennifer   | 10            | Department 10        |
| Michael    | 20            | Department 20        |
+------------+---------------+----------------------+

Q15. Display employee name and classify salary into four levels.

Answer:

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY >= 20000 THEN 'Very High'
           WHEN SALARY >= 10000 THEN 'High'
           WHEN SALARY >= 5000 THEN 'Medium'
           ELSE 'Low'
       END AS SALARY_LEVEL
FROM HR.EMPLOYEES;

Table Answer:

+------------+--------+--------------+
| FIRST_NAME | SALARY | SALARY_LEVEL |
+------------+--------+--------------+
| Steven     | 24000  | Very High    |
| Neena      | 17000  | High         |
| Lex        | 17000  | High         |
| Alexander  | 9000   | Medium       |
| Bruce      | 6000   | Medium       |
| David      | 4800   | Low          |
+------------+--------+--------------+