
-- ============================================================
-- 11_HAVING
-- File    : having_queries.sql
-- Table   : HR.EMPLOYEES, HR.DEPARTMENTS
-- Topics  : HAVING, WHERE vs HAVING
-- ============================================================


-- ============================================================
-- TABLE REFERENCE
-- ============================================================
-- HR.EMPLOYEES  : EMPLOYEE_ID, FIRST_NAME, LAST_NAME,
--                 SALARY, DEPARTMENT_ID, JOB_ID
-- HR.DEPARTMENTS: DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID
-- ============================================================


-- ============================================================
-- SECTION 1 : HAVING BASICS
-- ============================================================

-- Q1. Show departments where total salary is more than 50000.

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

-- Q2. Show departments where employee count is more than 5.

SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_EMP
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 5;

/*
| DEPARTMENT_ID | TOTAL_EMP |
| ------------- | --------- |
| 50            | 45        |
| 80            | 34        |
*/

-- Q3. Show departments where average salary is more than 8000.

SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > 8000;

/*
| DEPARTMENT_ID | AVG_SALARY |
| ------------- | ---------- |
| 90            | 19333.33   |
| 20            | 9500       |
| 110           | 8750       |
*/

-- Q4. Show departments where max salary is more than 12000.

SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MAX(SALARY) > 12000;

/*
| DEPARTMENT_ID | MAX_SALARY |
| ------------- | ---------- |
| 90            | 24000      |
| 20            | 13000      |
| 80            | 14000      |
*/

-- Q5. Show departments where minimum salary is less than 3000.

SELECT DEPARTMENT_ID, MIN(SALARY) AS MIN_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MIN(SALARY) < 3000;

/*
| DEPARTMENT_ID | MIN_SALARY |
| ------------- | ---------- |
| 50            | 2100       |
*/


-- ============================================================
-- SECTION 2 : WHERE vs HAVING
-- ============================================================

-- Q6. WHERE filters rows BEFORE grouping.
--     Show total salary per department, only for IT and HR jobs.

SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
FROM HR.EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'HR_REP')
GROUP BY DEPARTMENT_ID;

/*
| DEPARTMENT_ID | TOTAL_SALARY |
| ------------- | ------------ |
| 60            | 28800        |
| 40            | 6500         |
NOTE: WHERE filters first, then GROUP BY runs
*/

-- Q7. HAVING filters groups AFTER grouping.
--     Show departments where total salary > 25000 (after grouping).

SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY) > 25000;

/*
| DEPARTMENT_ID | TOTAL_SALARY |
| ------------- | ------------ |
| 50            | 156400       |
| 80            | 304500       |
| 100           | 51608        |
| 90            | 58000        |
*/

-- Q8. WHERE + HAVING together.
--     From employees earning more than 5000,
--     show departments where average salary > 10000.


SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
FROM HR.EMPLOYEES
WHERE SALARY > 5000
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > 10000;

/*
| DEPARTMENT_ID | AVG_SALARY |
| ------------- | ---------- |
| 90            | 19333.33   |
| 20            | 13000      |
NOTE: WHERE runs first (filter salary > 5000),
      then GROUP BY, then HAVING filters groups
*/


-- ============================================================
-- SECTION 3 : HAVING with DEPARTMENTS TABLE
-- ============================================================

-- Q9. Show departments that have more than 1 manager.
--     (Using DEPARTMENTS table - different table!)

SELECT MANAGER_ID, COUNT(*) AS DEPT_COUNT
FROM HR.DEPARTMENTS
WHERE MANAGER_ID IS NOT NULL
GROUP BY MANAGER_ID
HAVING COUNT(*) > 1;

/*
| MANAGER_ID | DEPT_COUNT |
| ---------- | ---------- |
| 100        | 3          |
| 101        | 2          |

NOTE: One manager handling multiple departments
*/

-- Q10. Show job wise total salary, sorted highest to lowest,
--      only where total salary exceeds 30000.


SELECT JOB_ID, SUM(SALARY) AS TOTAL_SALARY
FROM HR.EMPLOYEES
GROUP BY JOB_ID
HAVING SUM(SALARY) > 30000
ORDER BY TOTAL_SALARY DESC;

/*
| JOB_ID   | TOTAL_SALARY |
| -------- | ------------ |
| SA_REP   | 250500       |
| ST_CLERK | 64300        |
| IT_PROG  | 28800        |
| ...      | ...          |
*/


-- ============================================================
-- WHERE vs HAVING - QUICK RULE
-- ============================================================
-- WHERE  --> filters ROWS   --> runs BEFORE GROUP BY
-- HAVING --> filters GROUPS --> runs AFTER  GROUP BY
--
-- Wrong:  SELECT DEPT_ID, SUM(SALARY) FROM EMPLOYEES
--         WHERE SUM(SALARY) > 50000        -- ERROR!
--         GROUP BY DEPT_ID;
--
-- Right:  SELECT DEPT_ID, SUM(SALARY) FROM EMPLOYEES
--         GROUP BY DEPT_ID
--         HAVING SUM(SALARY) > 50000;      -- CORRECT!
-- ============================================================