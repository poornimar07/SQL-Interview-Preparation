


1.Find the 2nd highest salary

SELECT EMPID, ENAME, SALARY
FROM (
    SELECT EMPID, ENAME, SALARY,
           DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DR
    FROM EINFO
) AS X
WHERE DR = 2;


2. Find the Nth highest salary

SELECT EMPID, ENAME, SALARY
FROM (
    SELECT EMPID, ENAME, SALARY,
           DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DR
    FROM EINFO
) AS X
WHERE DR = 3;
Change 3 to any N value.


3. Find duplicate records

SELECT ENAME, DEPTID, SALARY, COUNT(*) AS CNT
FROM EINFO
GROUP BY ENAME, DEPTID, SALARY
HAVING COUNT(*) > 1;


4. Find employees earning more than their managers

SELECT E.ENAME AS EMPLOYEE,
       E.SALARY AS EMPLOYEE_SALARY,
       M.ENAME AS MANAGER,
       M.SALARY AS MANAGER_SALARY
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID
WHERE E.SALARY > M.SALARY;
5. Find highest salary in each department
SELECT DEPTID, MAX(SALARY) AS MAX_SALARY
FROM EINFO
GROUP BY DEPTID;


6. Find top N employees in each department

SELECT EMPID, ENAME, DEPTID, SALARY
FROM (
    SELECT EMPID, ENAME, DEPTID, SALARY,
           DENSE_RANK() OVER(
               PARTITION BY DEPTID
               ORDER BY SALARY DESC
           ) AS DR
    FROM EINFO
) AS X
WHERE DR <= 3;


7. Find departments with more than a specific number of employees

SELECT DEPTID, COUNT(*) AS EMPLOYEE_COUNT
FROM EINFO
GROUP BY DEPTID
HAVING COUNT(*) > 3;


8. Find employees who joined before their managers

SELECT E.ENAME AS EMPLOYEE,
       E.DOJ AS EMPLOYEE_DOJ,
       M.ENAME AS MANAGER,
       M.DOJ AS MANAGER_DOJ
FROM EINFO E
JOIN EINFO M
ON E.MANAGERID = M.EMPID
WHERE E.DOJ < M.DOJ;

9. Find highest-paid employee in each department

SELECT EMPID, ENAME, DEPTID, SALARY
FROM (
    SELECT EMPID, ENAME, DEPTID, SALARY,
           DENSE_RANK() OVER(
               PARTITION BY DEPTID
               ORDER BY SALARY DESC
           ) AS DR
    FROM EINFO
) AS X
WHERE DR = 1;


10. Find employees whose salary is above department average

SELECT EMPID, ENAME, DEPTID, SALARY
FROM EINFO E
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EINFO
    WHERE DEPTID = E.DEPTID
);

11. Find latest record for each employee

SELECT EMPID, ENAME, DOJ
FROM (
    SELECT EMPID, ENAME, DOJ,
           ROW_NUMBER() OVER(
               PARTITION BY EMPID
               ORDER BY DOJ DESC
           ) AS RN
    FROM EINFO
) AS X
WHERE RN = 1;


12. Find difference between current and previous values

SELECT EMPID, ENAME, SALARY,
       SALARY - LAG(SALARY) OVER(
           ORDER BY EMPID
       ) AS SALARY_DIFFERENCE
FROM EINFO;