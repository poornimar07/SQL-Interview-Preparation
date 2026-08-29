
UNION
   ↓
Combines results
   ↓
Removes duplicates


-- ============================================
-- UNION
-- ============================================

Q1. Combine IT and HR employee names

SELECT ENAME FROM EINFO WHERE DEPTID = 10
UNION
SELECT ENAME FROM EINFO WHERE DEPTID = 20;

Table Answer:

+--------+
| ENAME  |
+--------+
| Ravi   |
| Priya  |
| Arun   |
| Kaviya |
| Siva   |
+--------+

Q2. Combine IT and Finance employees

SELECT EMPID, ENAME
FROM EINFO
WHERE DEPTID = 10

UNION

SELECT EMPID, ENAME
FROM EINFO
WHERE DEPTID = 30;

Table Answer:

+-------+--------+
| EMPID | ENAME  |
+-------+--------+
| 101   | Ravi   |
| 102   | Priya  |
| 103   | Arun   |
| 106   | Meena  |
+-------+--------+

Q3. Combine department IDs from EINFO and EDEPT

SELECT DEPTID FROM EINFO
UNION
SELECT DEPTID FROM EDEPT;

Table Answer:

+--------+
| DEPTID |
+--------+
| 10     |
| 20     |
| 30     |
| 40     |
+--------+

Q4. Combine employees with salary >= 50000 and <= 40000

SELECT ENAME, SALARY
FROM EINFO
WHERE SALARY >= 50000

UNION

SELECT ENAME, SALARY
FROM EINFO
WHERE SALARY <= 40000;

Table Answer:

+--------+--------+
| ENAME  | SALARY |
+--------+--------+
| Ravi   | 70000  |
| Priya  | 50000  |
| Meena  | 55000  |
| Kaviya | 40000  |
| Siva   | 35000  |
+--------+--------+