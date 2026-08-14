LIMIT + OFFSET — SQL PRACTICE

Q1. Display the first 5 employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
LIMIT 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | SALARY
------------|------------|-------
100         | Steven     | 24000
101         | Neena      | 17000
102         | Lex        | 17000
103         | Alexander  | 9000
104         | Bruce      | 6000


Q2. Display the first 10 employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
LIMIT 10;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | SALARY
------------|------------|-------
100         | Steven     | 24000
101         | Neena      | 17000
102         | Lex        | 17000
103         | Alexander  | 9000
104         | Bruce      | 6000
105         | David      | 4800
106         | Valli      | 4800
107         | Diana      | 4200
108         | Nancy      | 12008
109         | Daniel     | 9000


Q3. Display the 5 highest-paid employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY DESC
LIMIT 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | SALARY
------------|------------|-------
100         | Steven     | 24000
101         | Neena      | 17000
102         | Lex        | 17000
145         | John       | 14000
146         | Karen      | 13500


Q4. Display the 5 lowest-paid employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY ASC
LIMIT 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | SALARY
------------|------------|-------
132         | TJ         | 2100
128         | Steven     | 2200
119         | Karen      | 2500
118         | Guy        | 2600
117         | Sigal      | 2800


Q5. Display the first 5 employees sorted by first name.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME
FROM HR.EMPLOYEES
ORDER BY FIRST_NAME ASC
LIMIT 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME
------------|-----------
166         | Adam
130         | Alexander
167         | Amit
105         | David
174         | Ellen


Q6. Skip the first 5 employees and display the next 5 employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME
FROM HR.EMPLOYEES
LIMIT 5 OFFSET 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME
------------|-----------
105         | David
106         | Valli
107         | Diana
108         | Nancy
109         | Daniel


Q7. Skip the first 10 employees and display the next 5 employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME
FROM HR.EMPLOYEES
LIMIT 5 OFFSET 10;

Table Answer:

EMPLOYEE_ID | FIRST_NAME
------------|-----------
110         | John
111         | Ismael
112         | Jose
113         | Luis
114         | Den


Q8. Display the 6th to 10th highest-paid employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY DESC
LIMIT 5 OFFSET 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | SALARY
------------|------------|-------
145         | John       | 14000
146         | Karen      | 13500
108         | Nancy      | 12008
114         | Den        | 11000
205         | Shelley    | 12008


Q9. Display the 11th to 15th highest-paid employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY DESC
LIMIT 5 OFFSET 10;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | SALARY
------------|------------|-------
115         | Alexander  | 10000
201         | Michael    | 13000
203         | Susan      | 6500
204         | Hermann    | 10000
206         | William    | 8300


Q10. Display the 5 newest employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE
FROM HR.EMPLOYEES
ORDER BY HIRE_DATE DESC
LIMIT 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | HIRE_DATE
------------|------------|----------
179         | Charles    | 2008-01-04
178         | Kimberely  | 2007-05-24
177         | Jack       | 2007-04-23
176         | Jonathon   | 2007-03-24
175         | Alyssa     | 2007-03-23


Q11. Display the 5 earliest-hired employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE
FROM HR.EMPLOYEES
ORDER BY HIRE_DATE ASC
LIMIT 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | HIRE_DATE
------------|------------|----------
100         | Steven     | 2003-06-17
205         | Shelley    | 2002-06-07
101         | Neena      | 2005-09-21
102         | Lex        | 2006-01-13
200         | Jennifer   | 2003-09-17


Q12. Display the first 5 employees from department 60.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_ID
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 60
LIMIT 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | DEPARTMENT_ID
------------|------------|--------------
103         | Alexander  | 60
104         | Bruce      | 60
105         | David      | 60
106         | Valli      | 60
107         | Diana      | 60


Q13. Display the next 5 employees from department 60 after skipping the first 5.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_ID
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 60
LIMIT 5 OFFSET 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | DEPARTMENT_ID
------------|------------|--------------
108         | Nancy      | 60
109         | Daniel     | 60
110         | John       | 60
111         | Ismael     | 60
112         | Jose       | 60


Q14. Display the 6th to 10th highest-paid employees.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY DESC
LIMIT 5 OFFSET 5;

Table Answer:

EMPLOYEE_ID | FIRST_NAME | LAST_NAME | SALARY
------------|------------|-----------|-------
145         | John       | Russell   | 14000
146         | Karen      | Partners  | 13500
108         | Nancy      | Greenberg | 12008
114         | Den        | Raphaely  | 11000
205         | Shelley    | Higgins   | 12008


Q15. Display the top 10 highest-paid employees from department 80.

Answer:

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, DEPARTMENT_ID
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 80
ORDER BY SALARY DESC
LIMIT 10;

Table Answer:

EMPLOYEE_ID | FIRST_NAME  | SALARY | DEPARTMENT_ID
------------|-------------|--------|---------------
145         | John        | 14000  | 80
146         | Karen       | 13500  | 80
147         | Alberto     | 12000  | 80
148         | Gerald      | 11000  | 80
149         | Eleni       | 10500  | 80
150         | Peter       | 10000  | 80
151         | David       | 9500   | 80
152         | Peter       | 9000   | 80
153         | Christopher | 8000   | 80
154         | Nanette     | 7500   | 80