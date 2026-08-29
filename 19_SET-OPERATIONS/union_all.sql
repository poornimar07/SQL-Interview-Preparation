

UNION ALL
   ↓
Combines results
   ↓
Keeps duplicates


-- ============================================
-- UNION ALL
-- ============================================


Q1. Combine IT and HR employees

SELECT ENAME FROM EINFO WHERE DEPTID = 10
UNION ALL
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

Q2. Show duplicate records using UNION ALL

SELECT ENAME
FROM EINFO
WHERE DEPTID = 20

UNION ALL

SELECT ENAME
FROM EINFO
WHERE DEPTID = 20;

Table Answer:

+--------+
| ENAME  |
+--------+
| Kaviya |
| Siva   |
| Kaviya |
| Siva   |
+--------+

--Here you can clearly see duplicates are preserved.

Q3. Combine EINFO and EDEPT department IDs

SELECT DEPTID FROM EINFO
UNION ALL
SELECT DEPTID FROM EDEPT;

Table Answer:

+--------+
| DEPTID |
+--------+
| 10     |
| 10     |
| 10     |
| 20     |
| 20     |
| 30     |
| 10     |
| 20     |
| 30     |
| 40     |
+--------+

Q4. Combine IT and HR employee details

SELECT EMPID, ENAME, SALARY
FROM EINFO
WHERE DEPTID = 10

UNION ALL

SELECT EMPID, ENAME, SALARY
FROM EINFO
WHERE DEPTID = 20;

Table Answer:

+-------+--------+--------+
| EMPID | ENAME  | SALARY |
+-------+--------+--------+
| 101   | Ravi   | 70000  |
| 102   | Priya  | 50000  |
| 103   | Arun   | 45000  |
| 104   | Kaviya | 40000  |
| 105   | Siva   | 35000  |
+-------+--------+--------+

Q5. UNION vs UNION ALL — duplicate demonstration

SELECT DEPTID
FROM EINFO
WHERE DEPTID IN (10,20)

UNION ALL

SELECT DEPTID
FROM EINFO
WHERE DEPTID IN (10,20);

Table Answer:

+--------+
| DEPTID |
+--------+
| 10     |
| 10     |
| 10     |
| 20     |
| 20     |
| 10     |
| 10     |
| 10     |
| 20     |
| 20     |
+--------+