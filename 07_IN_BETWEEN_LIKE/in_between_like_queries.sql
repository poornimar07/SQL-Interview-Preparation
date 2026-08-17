# 07_IN_BETWEEN_LIKE

## Q1. Display students who belong to IT or CSE.

Answer:

SELECT *
FROM STUDENT
WHERE DEPARTMENT IN ('IT', 'CSE');

Table Answer:

| STUDENT_ID | NAME  | DEPARTMENT | CITY      | MARKS |
|------------|-------|------------|-----------|-------|
| 101        | Ravi  | IT         | Chennai   | 85    |
| 102        | Priya | CSE        | Bangalore | 78    |
| 103        | Arun  | IT         | Chennai   | 65    |
| 105        | Siva  | CSE        | Madurai   | 72    |
| 106        | Meena | IT         | Chennai   | 90    |
| 107        | Kumar | IT         | Bangalore | 55    |

---

## Q2. Display students who belong to IT, CSE, or ECE.

Answer:

SELECT *
FROM STUDENT
WHERE DEPARTMENT IN ('IT', 'CSE', 'ECE');

Table Answer:

| STUDENT_ID | NAME   | DEPARTMENT | CITY      | MARKS |
|------------|--------|------------|-----------|-------|
| 101        | Ravi   | IT         | Chennai   | 85    |
| 102        | Priya  | CSE        | Bangalore | 78    |
| 103        | Arun   | IT         | Chennai   | 65    |
| 104        | Kaviya | ECE        | Chennai   | 92    |
| 105        | Siva   | CSE        | Madurai   | 72    |
| 106        | Meena  | IT         | Chennai   | 90    |
| 107        | Kumar  | IT         | Bangalore | 55    |

---

## Q3. Display students who do not belong to IT.

Answer:

SELECT *
FROM STUDENT
WHERE DEPARTMENT NOT IN ('IT');

Table Answer:

| STUDENT_ID | NAME   | DEPARTMENT | CITY      | MARKS |
|------------|--------|------------|-----------|-------|
| 102        | Priya  | CSE        | Bangalore | 78    |
| 104        | Kaviya | ECE        | Chennai   | 92    |
| 105        | Siva   | CSE        | Madurai   | 72    |

---

## Q4. Display students who do not belong to IT or CSE.

Answer:

SELECT *
FROM STUDENT
WHERE DEPARTMENT NOT IN ('IT', 'CSE');

Table Answer:

| STUDENT_ID | NAME   | DEPARTMENT | CITY    | MARKS |
|------------|--------|------------|---------|-------|
| 104        | Kaviya | ECE        | Chennai | 92    |

---

## Q5. Display students who live in Chennai or Bangalore.

Answer:

SELECT *
FROM STUDENT
WHERE CITY IN ('Chennai', 'Bangalore');

Table Answer:

| STUDENT_ID | NAME   | DEPARTMENT | CITY      | MARKS |
|------------|--------|------------|-----------|-------|
| 101        | Ravi   | IT         | Chennai   | 85    |
| 102        | Priya  | CSE        | Bangalore | 78    |
| 103        | Arun   | IT         | Chennai   | 65    |
| 104        | Kaviya | ECE        | Chennai   | 92    |
| 106        | Meena  | IT         | Chennai   | 90    |
| 107        | Kumar  | IT         | Bangalore | 55    |

---

## Q6. Display students whose marks are between 60 and 80.

Answer:

SELECT *
FROM STUDENT
WHERE MARKS BETWEEN 60 AND 80;

Table Answer:

| STUDENT_ID | NAME  | DEPARTMENT | CITY      | MARKS |
|------------|-------|------------|-----------|-------|
| 102        | Priya | CSE        | Bangalore | 78    |
| 103        | Arun  | IT         | Chennai   | 65    |
| 105        | Siva  | CSE        | Madurai   | 72    |

---

## Q7. Display students whose marks are between 70 and 90.

Answer:

SELECT *
FROM STUDENT
WHERE MARKS BETWEEN 70 AND 90;

Table Answer:

| STUDENT_ID | NAME  | DEPARTMENT | CITY      | MARKS |
|------------|-------|------------|-----------|-------|
| 101        | Ravi  | IT         | Chennai   | 85    |
| 102        | Priya | CSE        | Bangalore | 78    |
| 105        | Siva  | CSE        | Madurai   | 72    |
| 106        | Meena | IT         | Chennai   | 90    |

---

## Q8. Display students whose marks are not between 60 and 80.

Answer:

SELECT *
FROM STUDENT
WHERE MARKS NOT BETWEEN 60 AND 80;

Table Answer:

| STUDENT_ID | NAME   | DEPARTMENT | CITY      | MARKS |
|------------|--------|------------|-----------|-------|
| 101        | Ravi   | IT         | Chennai   | 85    |
| 104        | Kaviya | ECE        | Chennai   | 92    |
| 106        | Meena  | IT         | Chennai   | 90    |
| 107        | Kumar  | IT         | Bangalore | 55    |

---

## Q9. Display students whose marks are not between 70 and 90.

Answer:

SELECT *
FROM STUDENT
WHERE MARKS NOT BETWEEN 70 AND 90;

Table Answer:

| STUDENT_ID | NAME   | DEPARTMENT | CITY      | MARKS |
|------------|--------|------------|-----------|-------|
| 103        | Arun   | IT         | Chennai   | 65    |
| 104        | Kaviya | ECE        | Chennai   | 92    |
| 107        | Kumar  | IT         | Bangalore | 55    |

---

## Q10. Display students whose names start with 'R'.

Answer:

SELECT *
FROM STUDENT
WHERE NAME LIKE 'R%';

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY    | MARKS |
|------------|------|------------|---------|-------|
| 101        | Ravi | IT         | Chennai | 85    |

---

## Q11. Display students whose names end with 'a'.

Answer:

SELECT *
FROM STUDENT
WHERE NAME LIKE '%a';

Table Answer:

| STUDENT_ID | NAME   | DEPARTMENT | CITY      | MARKS |
|------------|--------|------------|-----------|-------|
| 102        | Priya  | CSE        | Bangalore | 78    |
| 104        | Kaviya | ECE        | Chennai   | 92    |
| 106        | Meena  | IT         | Chennai   | 90    |

---

## Q12. Display students whose names contain the letter 'a'.

Answer:

SELECT *
FROM STUDENT
WHERE NAME LIKE '%a%';

Table Answer:

| STUDENT_ID | NAME   | DEPARTMENT | CITY      | MARKS |
|------------|--------|------------|-----------|-------|
| 101        | Ravi   | IT         | Chennai   | 85    |
| 102        | Priya  | CSE        | Bangalore | 78    |
| 103        | Arun   | IT         | Chennai   | 65    |
| 104        | Kaviya | ECE        | Chennai   | 92    |
| 106        | Meena  | IT         | Chennai   | 90    |

---

## Q13. Display students whose names have exactly 4 characters.

Answer:

SELECT *
FROM STUDENT
WHERE NAME LIKE '____';

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY    | MARKS |
|------------|------|------------|---------|-------|
| 101        | Ravi | IT         | Chennai | 85    |
| 103        | Arun | IT         | Chennai | 65    |
| 105        | Siva | CSE        | Madurai | 72    |

---

## Q14. Display students whose names start with 'R' and have exactly 4 characters.

Answer:

SELECT *
FROM STUDENT
WHERE NAME LIKE 'R___';

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY    | MARKS |
|------------|------|------------|---------|-------|
| 101        | Ravi | IT         | Chennai | 85    |

---

## Q15. Display students whose names start with 'P' or belong to IT.

Answer:

SELECT *
FROM STUDENT
WHERE NAME LIKE 'P%'
OR DEPARTMENT = 'IT';

Table Answer:

| STUDENT_ID | NAME  | DEPARTMENT | CITY      | MARKS |
|------------|-------|------------|-----------|-------|
| 101        | Ravi  | IT         | Chennai   | 85    |
| 102        | Priya | CSE        | Bangalore | 78    |
| 103        | Arun  | IT         | Chennai   | 65    |
| 106        | Meena | IT         | Chennai   | 90    |
| 107        | Kumar | IT         | Bangalore | 55    |