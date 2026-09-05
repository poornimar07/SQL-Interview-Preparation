
1. Rank all employees by salary

Question: Find the salary rank of all employees.

SELECT EMPID, ENAME, SALARY,
       DENSE_RANK() OVER(ORDER BY SALARY DESC) AS SALARY_RANK
FROM EMP_JOIN;

Sample Output:
+-------+-------+--------+-------------+
| EMPID | ENAME | SALARY | SALARY_RANK |
+-------+-------+--------+-------------+
| 101   | Ravi  | 80000  | 1           |
| 102   | Priya | 70000  | 2           |
| 103   | Arun  | 70000  | 2           |
| 104   | Kavi  | 60000  | 3           |
+-------+-------+--------+-------------+

2. Find the highest salary

Question: Find employees having the highest salary.

SELECT EMPID, ENAME, SALARY
FROM
(
    SELECT EMPID, ENAME, SALARY,
           DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DR
    FROM EMP_JOIN
) AS X
WHERE DR = 1;

Sample Output:
+-------+-------+--------+
| EMPID | ENAME | SALARY |
+-------+-------+--------+
| 101   | Ravi  | 80000  |
+-------+-------+--------+

3. Find second-highest salary

SELECT EMPID, ENAME, SALARY
FROM
(
    SELECT EMPID, ENAME, SALARY,
           DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DR
    FROM EMP_JOIN
) AS X
WHERE DR = 2;

Sample Output:
+-------+-------+--------+
| EMPID | ENAME | SALARY |
+-------+-------+--------+
| 102   | Priya | 70000  |
| 103   | Arun  | 70000  |
+-------+-------+--------+

4. Find third-highest salary

SELECT EMPID, ENAME, SALARY
FROM
(
    SELECT EMPID, ENAME, SALARY,
           DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DR
    FROM EMP_JOIN
) AS X
WHERE DR = 3;

Sample Output:
+-------+-------+--------+
| EMPID | ENAME | SALARY |
+-------+-------+--------+
| 104   | Kavi  | 60000  |
+-------+-------+--------+

5. Department-wise salary ranking

SELECT EMPID, ENAME, DEPTID, SALARY,
       DENSE_RANK() OVER(
           PARTITION BY DEPTID
           ORDER BY SALARY DESC
       ) AS DEPT_RANK
FROM EMP_JOIN;

Sample Output:
+-------+-------+--------+--------+-----------+
| EMPID | ENAME | DEPTID | SALARY | DEPT_RANK |
+-------+-------+--------+--------+-----------+
| 101   | Ravi  | 10     | 80000  | 1         |
| 102   | Priya | 10     | 70000  | 2         |
| 103   | Arun  | 10     | 70000  | 2         |
| 105   | Suresh| 20     | 90000  | 1         |
+-------+-------+--------+--------+-----------+

6. Find top 2 salary ranks in each department

SELECT EMPID, ENAME, DEPTID, SALARY
FROM
(
    SELECT EMPID, ENAME, DEPTID, SALARY,
           DENSE_RANK() OVER(
               PARTITION BY DEPTID
               ORDER BY SALARY DESC
           ) AS DR
    FROM EMP_JOIN
) AS X
WHERE DR <= 2;

Sample Output:
+-------+--------+--------+--------+
| EMPID | ENAME  | DEPTID | SALARY |
+-------+--------+--------+--------+
| 101   | Ravi   | 10     | 80000  |
| 102   | Priya  | 10     | 70000  |
| 103   | Arun   | 10     | 70000  |
| 105   | Suresh | 20     | 90000  |
+-------+--------+--------+--------+

7. Find second-highest salary in each department

SELECT EMPID, ENAME, DEPTID, SALARY
FROM
(
    SELECT EMPID, ENAME, DEPTID, SALARY,
           DENSE_RANK() OVER(
               PARTITION BY DEPTID
               ORDER BY SALARY DESC
           ) AS DR
    FROM EMP_JOIN
) AS X
WHERE DR = 2;

Sample Output:
+-------+-------+--------+--------+
| EMPID | ENAME | DEPTID | SALARY |
+-------+-------+--------+--------+
| 102   | Priya | 10     | 70000  |
| 103   | Arun  | 10     | 70000  |
| 106   | Meena | 20     | 75000  |
+-------+-------+--------+--------+

8. Find 4th-highest distinct salary

SELECT EMPID, ENAME, SALARY
FROM
(
    SELECT EMPID, ENAME, SALARY,
           DENSE_RANK() OVER(
               ORDER BY SALARY DESC
           ) AS DR
    FROM EMP_JOIN
) AS X
WHERE DR = 4;

Sample Output:
+-------+-------+--------+
| EMPID | ENAME | SALARY |
+-------+-------+--------+
| 109   | Deepa | 55000  |
+-------+-------+--------+

9. Compare DENSE_RANK with RANK

Question: Show both ranks for each employee.
SELECT EMPID, ENAME, SALARY,
       RANK() OVER(ORDER BY SALARY DESC) AS RANK_NO,
       DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DENSE_RANK_NO
FROM EMP_JOIN;

Sample Output:
+-------+-------+--------+----------+---------------+
| EMPID | ENAME | SALARY | RANK_NO  | DENSE_RANK_NO |
+-------+-------+--------+----------+---------------+
| 101   | Ravi  | 80000  | 1        | 1             |
| 102   | Priya | 70000  | 2        | 2             |
| 103   | Arun  | 70000  | 2        | 2             |
| 104   | Kavi  | 60000  | 4        | 3             |
+-------+-------+--------+----------+---------------+

10. Find employees with duplicate salaries

SELECT EMPID, ENAME, SALARY
FROM EMP_JOIN
WHERE SALARY IN
(
    SELECT SALARY
    FROM EMP_JOIN
    GROUP BY SALARY
    HAVING COUNT(*) > 1
);

Sample Output:
+-------+-------+--------+
| EMPID | ENAME | SALARY |
+-------+-------+--------+
| 102   | Priya | 70000  |
| 103   | Arun  | 70000  |
| 107   | Kumar | 60000  |
| 108   | Anu   | 60000  |
+-------+-------+--------+

LAG() & LEAD()
11. Find previous employee salary using LAG()

SELECT EMPID, ENAME, SALARY,
       LAG(SALARY) OVER(ORDER BY EMPID) AS PREVIOUS_SALARY
FROM EMP_JOIN;

Sample Output:
+-------+-------+--------+-----------------+
| EMPID | ENAME | SALARY | PREVIOUS_SALARY |
+-------+-------+--------+-----------------+
| 101   | Ravi  | 80000  | NULL            |
| 102   | Priya | 70000  | 80000          |
| 103   | Arun  | 70000  | 70000          |
| 104   | Kavi  | 60000  | 70000          |
+-------+-------+--------+-----------------+

12. Find next employee salary using LEAD()

SELECT EMPID, ENAME, SALARY,
       LEAD(SALARY) OVER(ORDER BY EMPID) AS NEXT_SALARY
FROM EMP_JOIN;

Sample Output:
+-------+-------+--------+-------------+
| EMPID | ENAME | SALARY | NEXT_SALARY |
+-------+-------+--------+-------------+
| 101   | Ravi  | 80000  | 70000       |
| 102   | Priya | 70000  | 70000       |
| 103   | Arun  | 70000  | 60000       |
| 104   | Kavi  | 60000  | NULL        |
+-------+-------+--------+-------------+

13. Calculate salary difference from previous employee

SELECT EMPID, ENAME, SALARY,
       SALARY - LAG(SALARY) OVER(ORDER BY EMPID)
       AS SALARY_DIFFERENCE
FROM EMP_JOIN;

Sample Output:
+-------+-------+--------+------------------+
| EMPID | ENAME | SALARY | SALARY_DIFFERENCE|
+-------+-------+--------+------------------+
| 101   | Ravi  | 80000  | NULL             |
| 102   | Priya | 70000  | -10000           |
| 103   | Arun  | 70000  | 0                |
| 104   | Kavi  | 60000  | -10000           |
+-------+-------+--------+------------------+

14. Compare current employee with next employee

SELECT EMPID,
       ENAME,
       SALARY,
       LEAD(SALARY) OVER(ORDER BY EMPID) AS NEXT_SALARY,
       LEAD(SALARY) OVER(ORDER BY EMPID) - SALARY
       AS SALARY_DIFFERENCE
FROM EMP_JOIN;

Sample Output:
+-------+-------+--------+-------------+------------------+
| EMPID | ENAME | SALARY | NEXT_SALARY | SALARY_DIFFERENCE|
+-------+-------+--------+-------------+------------------+
| 101   | Ravi  | 80000  | 70000       | -10000           |
| 102   | Priya | 70000  | 70000       | 0                |
| 103   | Arun  | 70000  | 60000       | -10000           |
| 104   | Kavi  | 60000  | NULL        | NULL             |
+-------+-------+--------+-------------+------------------+

15. Use LAG() department-wise

Question: Find the previous salary of an employee within the same department.

SELECT EMPID,
       ENAME,
       DEPTID,
       SALARY,
       LAG(SALARY) OVER(
           PARTITION BY DEPTID
           ORDER BY EMPID
       ) AS PREVIOUS_SALARY
FROM EMP_JOIN;

Sample Output:
+-------+-------+--------+--------+-----------------+
| EMPID | ENAME | DEPTID | SALARY | PREVIOUS_SALARY |
+-------+-------+--------+--------+-----------------+
| 101   | Ravi  | 10     | 80000  | NULL            |
| 102   | Priya | 10     | 70000  | 80000           |
| 103   | Arun  | 10     | 70000  | 70000           |
| 105   | Suresh| 20     | 90000  | NULL            |
| 106   | Meena | 20     | 75000  | 90000           |
+-------+-------+--------+--------+-----------------+



----------------------------------------------------------
----------------------------------------------------------


ROW_NUMBER()
→ Every row gets UNIQUE number
→ 1, 2, 3, 4

RANK()
→ Same value = Same rank
→ Gap occurs after tie
→ 1, 2, 2, 4

DENSE_RANK()
→ Same value = Same rank
→ NO gap after tie
→ 1, 2, 2, 3

LAG()
→ Previous row

LEAD()
→ Next row



----------------------------------------------------
----------------------------------------------------


⭐ Most important interview questions to practice

1. Second-highest salary
2. Nth-highest salary
3. Top N employees per department
4. Second-highest salary per department
5. Difference between RANK() and DENSE_RANK()
6. Previous record using LAG()
7. Next record using LEAD()
8. Compare current vs previous value
9. Compare current vs next value
10. Department-wise DENSE_RANK()




  









