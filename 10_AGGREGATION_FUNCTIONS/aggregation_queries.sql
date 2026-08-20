


-- ============================================================
-- SECTION 1 : COUNT
-- ============================================================

-- Q1. How many employees are there?
SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM HR.EMPLOYEES;

/*
| TOTAL_EMPLOYEES |
| --------------- |
| 107             |
*/


-- ============================================================
-- SECTION 2 : SUM
-- ============================================================

-- Q2. What is the total salary of all employees?
SELECT SUM(SALARY) AS TOTAL_SALARY
FROM HR.EMPLOYEES;


/*
| TOTAL_SALARY |
| ------------ |
| 691416       |
*/


-- ============================================================
-- SECTION 3 : AVG
-- ============================================================

-- Q3. What is the average salary?
SELECT AVG(SALARY) AS AVG_SALARY
FROM HR.EMPLOYEES;


/*
| AVG_SALARY |
| ---------- |
| 6461.83    |
*/


-- ============================================================
-- SECTION 4 : MIN
-- ============================================================

-- Q4. What is the lowest salary?
SELECT MIN(SALARY) AS MIN_SALARY
FROM HR.EMPLOYEES;


/*
| MIN_SALARY |
| ---------- |
| 2100       |
*/


-- ============================================================
-- SECTION 5 : MAX
-- ============================================================

-- Q5. What is the highest salary?
SELECT MAX(SALARY) AS MAX_SALARY
FROM HR.EMPLOYEES;

/*
| MAX_SALARY |
| ---------- |
| 24000      |
*/


-- ============================================================
-- SECTION 6 : ORDER BY
-- ============================================================

-- Q6. Display employees sorted lowest to highest salary.
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY ASC;

/*
| EMPLOYEE_ID | FIRST_NAME | SALARY |
| ----------- | ---------- | ------ |
| 132         | TJ         | 2100   |
| 128         | Steven     | 2200   |
| 119         | Karen      | 2500   |
| ...         | ...        | ...    |
*/

-- Q7. Display employees sorted highest to lowest salary.
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY DESC;

/*
| EMPLOYEE_ID | FIRST_NAME | SALARY |
| ----------- | ---------- | ------ |
| 100         | Steven     | 24000  |
| 101         | Neena      | 17000  |
| 102         | Lex        | 17000  |
| ...         | ...        | ...    |
*/


-- ============================================================
-- SECTION 7 : GROUP BY + AGGREGATE
-- ============================================================

-- Q8. How many employees are in each department?
SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

/*
| DEPARTMENT_ID | TOTAL |
| ------------- | ----- |
| 10            | 1     |
| 20            | 2     |
| 50            | 45    |
| ...           | ...   |
*/

-- Q9. What is the total salary per department?
SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

/*
| DEPARTMENT_ID | TOTAL_SALARY |
| ------------- | ------------ |
| 10            | 4400         |
| 20            | 19000        |
| 50            | 156400       |
| ...           | ...          |
*/

-- Q10. What is the average salary per department?
SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

/*
| DEPARTMENT_ID | AVG_SALARY |
| ------------- | ---------- |
| 10            | 4400       |
| 20            | 9500       |
| 50            | 3475.55    |
| ...           | ...        |
*/

-- Q11. Find highest salary in each department.
SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

/*
| DEPARTMENT_ID | MAX_SALARY |
| ------------- | ---------- |
| 10            | 4400       |
| 20            | 13000      |
| 50            | 8200       |
| ...           | ...        |
*/

-- Q12. Find lowest salary in each department.
SELECT DEPARTMENT_ID, MIN(SALARY) AS MIN_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

/*
| DEPARTMENT_ID | MIN_SALARY |
| ------------- | ---------- |
| 10            | 4400       |
| 20            | 6000       |
| 50            | 2100       |
| ...           | ...        |
*/


-- ============================================================
-- SECTION 8 : HAVING
-- ============================================================

-- Q13. Show departments where total salary is more than 50000.
SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY) > 50000;

/*
| DEPARTMENT_ID | TOTAL_SALARY |
| ------------- | ------------ |
| 50            | 156400       |
| 80            | 304500       |
| 100           | 51608        |
*/
-- NOTE: HAVING = WHERE but used after GROUP BY always

-- Q14. Show departments where employee count is more than 5.
SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 5;

/*
| DEPARTMENT_ID | TOTAL |
| ------------- | ----- |
| 50            | 45    |
| 80            | 34    |
| ...           | ...   |
*/


-- ============================================================
-- SECTION 9 : GROUP BY + ORDER BY COMBINED
-- ============================================================

-- Q15. Department wise average salary, sorted highest to lowest.
SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY AVG_SALARY DESC;

/*
| DEPARTMENT_ID | AVG_SALARY |
| ------------- | ---------- |
| 90            | 19333.33   |
| 20            | 9500       |
| 110           | 8750       |
| ...           | ...        |
*/


-- ============================================================
-- QUICK REFERENCE
-- ============================================================
-- COUNT()       --> How many rows
-- SUM()         --> Add all values
-- AVG()         --> Average value
-- MIN()         --> Smallest value
-- MAX()         --> Biggest value
-- ORDER BY ASC  --> Low to High
-- ORDER BY DESC --> High to Low
-- GROUP BY      --> Bundle same values
-- HAVING        --> Filter after GROUP BY (not WHERE)
-- ============================================================