

## Q1. Display students whose city is NULL.

Answer:

SELECT *
FROM STUDENT
WHERE CITY IS NULL;

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 108 | Anu | CSE | NULL | 75 |

---

## Q2. Display students whose city is not NULL.

Answer:

SELECT *
FROM STUDENT
WHERE CITY IS NOT NULL;

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 102 | Priya | CSE | Bangalore | 78 |
| 103 | Arun | IT | Chennai | 65 |
| 104 | Kaviya | ECE | Chennai | 92 |

---

## Q3. Display student names and replace NULL city with 'Not Available'.

Answer:

SELECT NAME,
       COALESCE(CITY, 'Not Available') AS CITY
FROM STUDENT;

Table Answer:

| NAME | CITY |
|------|------|
| Ravi | Chennai |
| Priya | Bangalore |
| Arun | Chennai |
| Anu | Not Available |

---

## Q4. Display students from IT department AND marks greater than 70.

Answer:

SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'IT'
AND MARKS > 70;

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 106 | Meena | IT | Chennai | 90 |

---

## Q5. Display students from Chennai AND marks greater than or equal to 80.

Answer:

SELECT *
FROM STUDENT
WHERE CITY = 'Chennai'
AND MARKS >= 80;

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 104 | Kaviya | ECE | Chennai | 92 |
| 106 | Meena | IT | Chennai | 90 |

---

## Q6. Display students from IT OR CSE.

Answer:

SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'IT'
OR DEPARTMENT = 'CSE';

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 102 | Priya | CSE | Bangalore | 78 |
| 103 | Arun | IT | Chennai | 65 |
| 105 | Siva | CSE | Madurai | 72 |
| 106 | Meena | IT | Chennai | 90 |

---

## Q7. Display students from Chennai OR Bangalore.

Answer:

SELECT *
FROM STUDENT
WHERE CITY = 'Chennai'
OR CITY = 'Bangalore';

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 102 | Priya | CSE | Bangalore | 78 |
| 103 | Arun | IT | Chennai | 65 |
| 104 | Kaviya | ECE | Chennai | 92 |
| 106 | Meena | IT | Chennai | 90 |

---

## Q8. Display students who are NOT from IT.

Answer:

SELECT *
FROM STUDENT
WHERE NOT DEPARTMENT = 'IT';

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 102 | Priya | CSE | Bangalore | 78 |
| 104 | Kaviya | ECE | Chennai | 92 |
| 105 | Siva | CSE | Madurai | 72 |

---

## Q9. Display IT students whose marks are greater than 70 OR city is Chennai.

Answer:

SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'IT'
AND (MARKS > 70 OR CITY = 'Chennai');

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 103 | Arun | IT | Chennai | 65 |
| 106 | Meena | IT | Chennai | 90 |

---

## Q10. Display students who are NOT from CSE AND have marks greater than 60.

Answer:

SELECT *
FROM STUDENT
WHERE NOT DEPARTMENT = 'CSE'
AND MARKS > 60;

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 103 | Arun | IT | Chennai | 65 |
| 104 | Kaviya | ECE | Chennai | 92 |
| 106 | Meena | IT | Chennai | 90 |

---

## Q11. Display students whose department is IT AND city is Chennai.

Answer:

SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'IT'
AND CITY = 'Chennai';

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 103 | Arun | IT | Chennai | 65 |
| 106 | Meena | IT | Chennai | 90 |

---

## Q12. Display students whose marks are greater than 80 OR department is ECE.

Answer:

SELECT *
FROM STUDENT
WHERE MARKS > 80
OR DEPARTMENT = 'ECE';

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 104 | Kaviya | ECE | Chennai | 92 |
| 106 | Meena | IT | Chennai | 90 |

---

## Q13. Display students whose city is NULL OR marks are below 60.

Answer:

SELECT *
FROM STUDENT
WHERE CITY IS NULL
OR MARKS < 60;

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 107 | Kumar | IT | NULL | 55 |
| 108 | Anu | CSE | NULL | 75 |

---

## Q14. Display students whose city is not NULL AND marks are between 70 and 90.

Answer:

SELECT *
FROM STUDENT
WHERE CITY IS NOT NULL
AND MARKS BETWEEN 70 AND 90;

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 102 | Priya | CSE | Bangalore | 78 |
| 105 | Siva | CSE | Madurai | 72 |
| 106 | Meena | IT | Chennai | 90 |

---

## Q15. Display students from IT or CSE whose marks are greater than 70.

Answer:

SELECT *
FROM STUDENT
WHERE (DEPARTMENT = 'IT'
OR DEPARTMENT = 'CSE')
AND MARKS > 70;

Table Answer:

| STUDENT_ID | NAME | DEPARTMENT | CITY | MARKS |
|------------|------|------------|------|-------|
| 101 | Ravi | IT | Chennai | 85 |
| 102 | Priya | CSE | Bangalore | 78 |
| 105 | Siva | CSE | Madurai | 72 |
| 106 | Meena | IT | Chennai | 90 |