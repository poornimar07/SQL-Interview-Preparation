
Q1. Display employees sorted by salary from lowest to highest.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY ASC;

Table Answer:

| EMPLOYEE_ID | FIRST_NAME | SALARY |
| ----------- | ---------- | ------ |
| 132         | TJ         | 2100   |
| 128         | Steven     | 2200   |
| 119         | Karen      | 2500   |
| ...         |            |        |

Q2. Display employees sorted by salary from highest to lowest.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY DESC;

Table Answer:

| EMPLOYEE_ID | FIRST_NAME | SALARY |
| ----------- | ---------- | ------ |
| 100         | Steven     | 24000  |
| 101         | Neena      | 17000  |
| 102         | Lex        | 17000  |
| ...         |            |        |

Q3. Display employees sorted by first name from A to Z.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME
FROM HR.EMPLOYEES
ORDER BY FIRST_NAME ASC;

Table Answer:

| EMPLOYEE_ID | FIRST_NAME |
| ----------- | ---------- |
| 166         | Adam       |
| 130         | Alexander  |
| 174         | Ellen      |
| ...         |            |

Q4. Display employees sorted by first name from Z to A.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME
FROM HR.EMPLOYEES
ORDER BY FIRST_NAME DESC;

Table Answer:

| EMPLOYEE_ID | FIRST_NAME |
| ----------- | ---------- |
| 179         | Steven     |
| 178         | Shelli     |
| 177         | Sundar     |
| ...         |            |

Q5. Display employees sorted by hire date from oldest to newest.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE
FROM HR.EMPLOYEES
ORDER BY HIRE_DATE ASC;

Table Answer:

| EMPLOYEE_ID | FIRST_NAME | HIRE_DATE  |
| ----------- | ---------- | ---------- |
| 100         | Steven     | 2003-06-17 |
| 101         | Neena      | 2005-09-21 |
| 102         | Lex        | 2006-01-13 |
| ...         |            |            |

Q6. Display employees sorted by hire date from newest to oldest.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE
FROM HR.EMPLOYEES
ORDER BY HIRE_DATE DESC;

Table Answer:

| EMPLOYEE_ID | FIRST_NAME | HIRE_DATE  |
| ----------- | ---------- | ---------- |
| 179         | Charles    | 2008-01-04 |
| 178         | Kimberely  | 2007-05-24 |
| 177         | Jack       | 2007-04-23 |
| ...         |            |            |

Q7. Display employees sorted by department ID in ascending order.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_ID
FROM HR.EMPLOYEES
ORDER BY DEPARTMENT_ID ASC;

Table Answer:

| EMPLOYEE_ID | FIRST_NAME | DEPARTMENT_ID |
| ----------- | ---------- | ------------- |
| 200         | Jennifer   | 10            |
| 201         | Michael    | 20            |
| 202         | Pat        | 20            |
| ...         |            |               |

Q8. Display employees sorted by department ID in descending order.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_ID
FROM HR.EMPLOYEES
ORDER BY DEPARTMENT_ID DESC;

Table Answer:

| EMPLOYEE_ID | FIRST_NAME | DEPARTMENT_ID |
| ----------- | ---------- | ------------- |
| 145         | John       | 80            |
| 146         | Karen      | 80            |
| 147         | Alberto    | 70            |
| ...         |            |               |

Q9. Display employees with the highest salary first.

Answer:

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY DESC;

Table Answer:

| FIRST_NAME | LAST_NAME | SALARY |
| ---------- | --------- | ------ |
| Steven     | King      | 24000  |
| Neena      | Kochhar   | 17000  |
| Lex        | De Haan   | 17000  |
| ...        |           |        |

Q10. Display employees sorted by department ID ascending and salary descending.

Answer:

SELECT FIRST_NAME, DEPARTMENT_ID, SALARY
FROM HR.EMPLOYEES
ORDER BY DEPARTMENT_ID ASC, SALARY DESC;

Table Answer:

| FIRST_NAME | DEPARTMENT_ID | SALARY |
| ---------- | ------------- | ------ |
| Jennifer   | 10            | 4400   |
| Michael    | 20            | 13000  |
| Pat        | 20            | 6000   |
| ...        |               |        |

Q11. Display employees earning more than 5000 and sort by salary highest to lowest.

Answer:

SELECT FIRST_NAME, SALARY
FROM HR.EMPLOYEES
WHERE SALARY > 5000
ORDER BY SALARY DESC;

Table Answer:

| FIRST_NAME | SALARY |
| ---------- | ------ |
| Steven     | 24000  |
| Neena      | 17000  |
| Lex        | 17000  |
| John       | 14000  |
| ...        |        |

Q12. Display employees from department 60 sorted by salary highest to lowest.

Answer:

SELECT FIRST_NAME, DEPARTMENT_ID, SALARY
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 60
ORDER BY SALARY DESC;

Table Answer:

| FIRST_NAME | DEPARTMENT_ID | SALARY |
| ---------- | ------------- | ------ |
| Alexander  | 60            | 9000   |
| Bruce      | 60            | 6000   |
| David      | 60            | 4800   |
| ...        |               |        |

Q13. Display employees sorted by job ID alphabetically.

Answer:

SELECT FIRST_NAME, JOB_ID
FROM HR.EMPLOYEES
ORDER BY JOB_ID ASC;

Table Answer:

| FIRST_NAME | JOB_ID     |
| ---------- | ---------- |
| Jennifer   | AC_ACCOUNT |
| Shelley    | AC_MGR     |
| Daniel     | AD_ASST    |
| ...        |            |

Q14. Sort employees by department ID first and first name second.

Answer:

SELECT FIRST_NAME, DEPARTMENT_ID
FROM HR.EMPLOYEES
ORDER BY DEPARTMENT_ID ASC, FIRST_NAME ASC;

Table Answer:

| FIRST_NAME | DEPARTMENT_ID |
| ---------- | ------------- |
| Jennifer   | 10            |
| Michael    | 20            |
| Pat        | 20            |
| Adam       | 30            |
| ...        |               |

Q15. Display the top 5 highest-paid employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY DESC
FETCH FIRST 5 ROWS ONLY;

Table Answer:

| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | SALARY |
| ----------- | ---------- | --------- | ------ |
| 100         | Steven     | King      | 24000  |
| 101         | Neena      | Kochhar   | 17000  |
| 102         | Lex        | De Haan   | 17000  |
| 145         | John       | Russell   | 14000  |
| 146         | Karen      | Partners  | 13500  |
