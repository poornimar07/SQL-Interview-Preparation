
1. Rank all employees based on salary from highest to lowest.

SELECT EMPID, ENAME, SALARY,
       RANK() OVER(ORDER BY SALARY DESC) AS SALARY_RANK
FROM EINFO;

Answer Table:

+-------+-------+--------+-------------+
| EMPID | ENAME | SALARY | SALARY_RANK |
+-------+-------+--------+-------------+
| 101   | Ravi  | 80000  | 1           |
| 102   | Priya | 70000  | 2           |
| 103   | Arun  | 70000  | 2           |
| 104   | Kavi  | 60000  | 4           |
+-------+-------+--------+-------------+

2. Rank employees based on salary from lowest to highest.

SELECT EMPID, ENAME, SALARY,
       RANK() OVER(ORDER BY SALARY ASC) AS SALARY_RANK
FROM EINFO;

Answer Table:

+-------+-------+--------+-------------+
| EMPID | ENAME | SALARY | SALARY_RANK |
+-------+-------+--------+-------------+
| 104   | Kavi  | 60000  | 1           |
| 102   | Priya | 70000  | 2           |
| 103   | Arun  | 70000  | 2           |
| 101   | Ravi  | 80000  | 4           |
+-------+-------+--------+-------------+

3. Rank employees department-wise based on salary.

SELECT EMPID, ENAME, DEPTID, SALARY,
       RANK() OVER(
           PARTITION BY DEPTID
           ORDER BY SALARY DESC
       ) AS DEPT_RANK
FROM EINFO;

Answer Table:

+-------+-------+--------+--------+-----------+
| EMPID | ENAME | DEPTID | SALARY | DEPT_RANK |
+-------+-------+--------+--------+-----------+
| 101   | Ravi  | 10     | 80000  | 1         |
| 102   | Priya | 10     | 70000  | 2         |
| 103   | Arun  | 20     | 70000  | 1         |
| 104   | Kavi  | 20     | 60000  | 2         |
+-------+-------+--------+--------+-----------+

4. Find the employee with the highest salary.

SELECT *
FROM (
    SELECT EMPID, ENAME, SALARY,
           RANK() OVER(ORDER BY SALARY DESC) AS RN
    FROM EINFO
) T
WHERE RN = 1;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| 101   | Ravi  | 80000  | 1  |
+-------+-------+--------+----+

5. Find employees having the second-highest salary.

SELECT *
FROM (
    SELECT EMPID, ENAME, SALARY,
           RANK() OVER(ORDER BY SALARY DESC) AS RN
    FROM EINFO
) T
WHERE RN = 2;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| 102   | Priya | 70000  | 2  |
| 103   | Arun  | 70000  | 2  |
+-------+-------+--------+----+

6. Find employees having the third rank.

SELECT *
FROM (
    SELECT EMPID, ENAME, SALARY,
           RANK() OVER(ORDER BY SALARY DESC) AS RN
    FROM EINFO
) T
WHERE RN = 3;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| No rows because rank 3 is skipped |
+-------+-------+--------+------------+

7. Find the top 2 salary ranks.

SELECT *
FROM (
    SELECT EMPID, ENAME, SALARY,
           RANK() OVER(ORDER BY SALARY DESC) AS RN
    FROM EINFO
) T
WHERE RN <= 2;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| 101   | Ravi  | 80000  | 1  |
| 102   | Priya | 70000  | 2  |
| 103   | Arun  | 70000  | 2  |
+-------+-------+--------+----+

8. Find top 2 salary ranks from each department.

SELECT *
FROM (
    SELECT EMPID, ENAME, DEPTID, SALARY,
           RANK() OVER(
               PARTITION BY DEPTID
               ORDER BY SALARY DESC
           ) AS RN
    FROM EINFO
) T
WHERE RN <= 2;

Answer Table:

+-------+-------+--------+--------+----+
| EMPID | ENAME | DEPTID | SALARY | RN |
+-------+-------+--------+--------+----+
| 101   | Ravi  | 10     | 80000  | 1  |
| 102   | Priya | 10     | 70000  | 2  |
| 103   | Arun  | 20     | 70000  | 1  |
| 104   | Kavi  | 20     | 60000  | 2  |
+-------+-------+--------+--------+----+

9. Rank employees department-wise using ascending salary.

SELECT EMPID, ENAME, DEPTID, SALARY,
       RANK() OVER(
           PARTITION BY DEPTID
           ORDER BY SALARY ASC
       ) AS RN
FROM EINFO;

Answer Table:

+-------+-------+--------+--------+----+
| EMPID | ENAME | DEPTID | SALARY | RN |
+-------+-------+--------+--------+----+
| 102   | Priya | 10     | 70000  | 1  |
| 101   | Ravi  | 10     | 80000  | 2  |
| 104   | Kavi  | 20     | 60000  | 1  |
| 103   | Arun  | 20     | 70000  | 2  |
+-------+-------+--------+--------+----+

10. Find employees ranked between 1 and 3.

SELECT *
FROM (
    SELECT EMPID, ENAME, SALARY,
           RANK() OVER(ORDER BY SALARY DESC) AS RN
    FROM EINFO
) T
WHERE RN BETWEEN 1 AND 3;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| 101   | Ravi  | 80000  | 1  |
| 102   | Priya | 70000  | 2  |
| 103   | Arun  | 70000  | 2  |
+-------+-------+--------+----+

11. Rank employees by salary within each department.

SELECT ENAME, DEPTID, SALARY,
       RANK() OVER(
           PARTITION BY DEPTID
           ORDER BY SALARY DESC
       ) AS RN
FROM EINFO;

Answer Table:

+-------+--------+--------+----+
| ENAME | DEPTID | SALARY | RN |
+-------+--------+--------+----+
| Ravi  | 10     | 80000  | 1  |
| Priya | 10     | 70000  | 2  |
| Arun  | 20     | 70000  | 1  |
| Kavi  | 20     | 60000  | 2  |
+-------+--------+--------+----+

12. Find the third rank in each department.

SELECT *
FROM (
    SELECT EMPID, ENAME, DEPTID, SALARY,
           RANK() OVER(
               PARTITION BY DEPTID
               ORDER BY SALARY DESC
           ) AS RN
    FROM EINFO
) T
WHERE RN = 3;

Answer Table:

+-------+-------+--------+--------+----+
| EMPID | ENAME | DEPTID | SALARY | RN |
+-------+-------+--------+--------+----+
| No rows |      |        |        |    |
+-------+-------+--------+--------+----+

13. Rank employees based on salary and EMPID.

SELECT EMPID, ENAME, SALARY,
       RANK() OVER(
           ORDER BY SALARY DESC, EMPID
       ) AS RN
FROM EINFO;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| 101   | Ravi  | 80000  | 1  |
| 102   | Priya | 70000  | 2  |
| 103   | Arun  | 70000  | 3  |
| 104   | Kavi  | 60000  | 4  |
+-------+-------+--------+----+

14. Find employees with salary greater than 50000 and rank them.

SELECT EMPID, ENAME, SALARY,
       RANK() OVER(ORDER BY SALARY DESC) AS RN
FROM EINFO
WHERE SALARY > 50000;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| 101   | Ravi  | 80000  | 1  |
| 102   | Priya | 70000  | 2  |
| 103   | Arun  | 70000  | 2  |
| 104   | Kavi  | 60000  | 4  |
+-------+-------+--------+----+

15. Rank employees alphabetically within each department.

SELECT EMPID, ENAME, DEPTID,
       RANK() OVER(
           PARTITION BY DEPTID
           ORDER BY ENAME
       ) AS RN
FROM EINFO;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | DEPTID | RN |
+-------+-------+--------+----+
| 101   | Ravi  | 10     | 1  |
| 102   | Priya | 10     | 2  |
| 103   | Arun  | 20     | 1  |
| 104   | Kavi  | 20     | 2  |
+-------+-------+--------+----+

16. Find employees who have the same salary rank.

SELECT EMPID, ENAME, SALARY,
       RANK() OVER(ORDER BY SALARY DESC) AS RN
FROM EINFO;
Answer Table:
+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| 101   | Ravi  | 80000  | 1  |
| 102   | Priya | 70000  | 2  |
| 103   | Arun  | 70000  | 2  |
| 104   | Kavi  | 60000  | 4  |
+-------+-------+--------+----+
Here Priya and Arun are tied at rank 2.

17. Find the lowest salary rank.

SELECT *
FROM (
    SELECT EMPID, ENAME, SALARY,
           RANK() OVER(ORDER BY SALARY ASC) AS RN
    FROM EINFO
) T
WHERE RN = 1;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| 104   | Kavi  | 60000  | 1  |
+-------+-------+--------+----+

18. Rank employees department-wise and show salary.

SELECT EMPID, ENAME, DEPTID, SALARY,
       RANK() OVER(
           PARTITION BY DEPTID
           ORDER BY SALARY DESC
       ) AS DEPT_RANK
FROM EINFO;

Answer Table:

+-------+-------+--------+--------+-----------+
| EMPID | ENAME | DEPTID | SALARY | DEPT_RANK |
+-------+-------+--------+--------+-----------+
| 101   | Ravi  | 10     | 80000  | 1         |
| 102   | Priya | 10     | 70000  | 2         |
| 103   | Arun  | 20     | 70000  | 1         |
| 104   | Kavi  | 20     | 60000  | 2         |
+-------+-------+--------+--------+-----------+

19. Find employees whose rank is greater than 1.

SELECT *
FROM (
    SELECT EMPID, ENAME, SALARY,
           RANK() OVER(ORDER BY SALARY DESC) AS RN
    FROM EINFO
) T
WHERE RN > 1;

Answer Table:

+-------+-------+--------+----+
| EMPID | ENAME | SALARY | RN |
+-------+-------+--------+----+
| 102   | Priya | 70000  | 2  |
| 103   | Arun  | 70000  | 2  |
| 104   | Kavi  | 60000  | 4  |
+-------+-------+--------+----+

20. Show salary ranking with department-wise ranking.

SELECT EMPID,
       ENAME,
       DEPTID,
       SALARY,
       RANK() OVER(
           ORDER BY SALARY DESC
       ) AS SALARY_RANK,
       RANK() OVER(
           PARTITION BY DEPTID
           ORDER BY SALARY DESC
       ) AS DEPT_RANK
FROM EINFO;

Answer Table:

+-------+-------+--------+--------+-------------+-----------+
| EMPID | ENAME | DEPTID | SALARY | SALARY_RANK | DEPT_RANK |
+-------+-------+--------+--------+-------------+-----------+
| 101   | Ravi  | 10     | 80000  | 1           | 1         |
| 102   | Priya | 10     | 70000  | 2           | 2         |
| 103   | Arun  | 20     | 70000  | 2           | 1         |
| 104   | Kavi  | 20     | 60000  | 4           | 2         |
+-------+-------+--------+--------+-------------+-----------+