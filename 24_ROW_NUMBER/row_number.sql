
Q1. Assign a unique row number to every student.

SELECT ID, NAME, DEPT, MARKS,
       ROW_NUMBER() OVER(ORDER BY ID) AS ROW_NUM
FROM STUDENT;
Answer:
+-----+-------+------+-------+---------+
| ID  | NAME  | DEPT | MARKS | ROW_NUM |
+-----+-------+------+-------+---------+
| 101 | Arun  | CS   | 85    | 1       |
| 102 | Priya | IT   | 92    | 2       |
| 103 | Ravi  | CS   | 78    | 3       |
| 104 | Kavi  | IT   | 88    | 4       |
| 105 | Meena | CS   | 92    | 5       |
+-----+-------+------+-------+---------+

Q2. Give row numbers based on highest marks.


SELECT NAME, MARKS,
       ROW_NUMBER() OVER(ORDER BY MARKS DESC) AS ROW_NUM
FROM STUDENT;
Answer:
+-------+-------+---------+
| NAME  | MARKS | ROW_NUM |
+-------+-------+---------+
| Priya | 92    | 1       |
| Meena | 92    | 2       |
| Kavi  | 88    | 3       |
| Arun  | 85    | 4       |
| Ravi  | 78    | 5       |
+-------+-------+---------+

Q3. Generate row numbers separately for each department.

SELECT NAME, DEPT, MARKS,
       ROW_NUMBER() OVER(
           PARTITION BY DEPT
           ORDER BY MARKS DESC
       ) AS ROW_NUM
FROM STUDENT;
Answer:
+-------+------+-------+---------+
| NAME  | DEPT | MARKS | ROW_NUM |
+-------+------+-------+---------+
| Meena | CS   | 92    | 1       |
| Arun  | CS   | 85    | 2       |
| Ravi  | CS   | 78    | 3       |
| Priya | IT   | 92    | 1       |
| Kavi  | IT   | 88    | 2       |
+-------+------+-------+---------+

Q4. Find the top student from each department.

SELECT *
FROM (
    SELECT NAME, DEPT, MARKS,
           ROW_NUMBER() OVER(
               PARTITION BY DEPT
               ORDER BY MARKS DESC
           ) AS RN
    FROM STUDENT
) T
WHERE RN = 1;
Answer:
+-------+------+-------+----+
| NAME  | DEPT | MARKS | RN |
+-------+------+-------+----+
| Meena | CS   | 92    | 1  |
| Priya | IT   | 92    | 1  |
+-------+------+-------+----+

Q5. Find the top 2 students from each department.

SELECT *
FROM (
    SELECT NAME, DEPT, MARKS,
           ROW_NUMBER() OVER(
               PARTITION BY DEPT
               ORDER BY MARKS DESC
           ) AS RN
    FROM STUDENT
) T
WHERE RN <= 2;
Answer:
+-------+------+-------+----+
| NAME  | DEPT | MARKS | RN |
+-------+------+-------+----+
| Meena | CS   | 92    | 1  |
| Arun  | CS   | 85    | 2  |
| Priya | IT   | 92    | 1  |
| Kavi  | IT   | 88    | 2  |
+-------+------+-------+----+

Q6. Find the student with the lowest marks.

SELECT *
FROM (
    SELECT NAME, MARKS,
           ROW_NUMBER() OVER(ORDER BY MARKS ASC) AS RN
    FROM STUDENT
) T
WHERE RN = 1;
Answer:
+------+-------+----+
| NAME | MARKS | RN |
+------+-------+----+
| Ravi | 78    | 1  |
+------+-------+----+

Q7. Assign row numbers by department and name.

SELECT NAME, DEPT,
       ROW_NUMBER() OVER(
           PARTITION BY DEPT
           ORDER BY NAME
       ) AS RN
FROM STUDENT;
Answer:
+-------+------+----+
| NAME  | DEPT | RN |
+-------+------+----+
| Arun  | CS   | 1  |
| Meena | CS   | 2  |
| Ravi  | CS   | 3  |
| Kavi  | IT   | 1  |
| Priya | IT   | 2  |
+-------+------+----+

Q8. Find the second-highest student from each department.


SELECT *
FROM (
    SELECT NAME, DEPT, MARKS,
           ROW_NUMBER() OVER(
               PARTITION BY DEPT
               ORDER BY MARKS DESC
           ) AS RN
    FROM STUDENT
) T
WHERE RN = 2;
Answer:
+------+-------+-------+----+
| NAME | DEPT  | MARKS | RN |
+------+-------+-------+----+
| Arun | CS    | 85    | 2  |
| Kavi | IT    | 88    | 2  |
+------+-------+-------+----+

Q9. Find duplicate marks using ROW_NUMBER().

SELECT *
FROM (
    SELECT NAME, MARKS,
           ROW_NUMBER() OVER(
               PARTITION BY MARKS
               ORDER BY NAME
           ) AS RN
    FROM STUDENT
) T
WHERE RN > 1;
Answer:
+-------+-------+----+
| NAME  | MARKS | RN |
+-------+-------+----+
| Priya | 92    | 2  |
+-------+-------+----+

Q10. Keep the first record for every duplicate mark.

SELECT *
FROM (
    SELECT NAME, MARKS,
           ROW_NUMBER() OVER(
               PARTITION BY MARKS
               ORDER BY NAME
           ) AS RN
    FROM STUDENT
) T
WHERE RN = 1;
Answer:
+-------+-------+----+
| NAME  | MARKS | RN |
+-------+-------+----+
| Arun  | 85    | 1  |
| Kavi  | 88    | 1  |
| Meena | 92    | 1  |
| Ravi  | 78    | 1  |
+-------+-------+----+

Q11. Find the third-highest student overall.

SELECT *
FROM (
    SELECT NAME, MARKS,
           ROW_NUMBER() OVER(ORDER BY MARKS DESC) AS RN
    FROM STUDENT
) T
WHERE RN = 3;
Answer:
+------+-------+----+
| NAME | MARKS | RN |
+------+-------+----+
| Kavi | 88    | 3  |
+------+-------+----+

Q12. Assign row numbers in descending student ID.

SELECT ID, NAME,
       ROW_NUMBER() OVER(ORDER BY ID DESC) AS RN
FROM STUDENT;
Answer:
+-----+-------+----+
| ID  | NAME  | RN |
+-----+-------+----+
| 105 | Meena | 1  |
| 104 | Kavi  | 2  |
| 103 | Ravi  | 3  |
| 102 | Priya | 4  |
| 101 | Arun  | 5  |
+-----+-------+----+

Q13. Find the first 3 students by marks.

SELECT *
FROM (
    SELECT NAME, MARKS,
           ROW_NUMBER() OVER(ORDER BY MARKS DESC) AS RN
    FROM STUDENT
) T
WHERE RN <= 3;
Answer:
+-------+-------+----+
| NAME  | MARKS | RN |
+-------+-------+----+
| Priya | 92    | 1  |
| Meena | 92    | 2  |
| Kavi  | 88    | 3  |
+-------+-------+----+

Q14. Number students within each department alphabetically.

SELECT NAME, DEPT,
       ROW_NUMBER() OVER(
           PARTITION BY DEPT
           ORDER BY NAME
       ) AS RN
FROM STUDENT;
Answer:
+-------+------+----+
| NAME  | DEPT | RN |
+-------+------+----+
| Arun  | CS   | 1  |
| Meena | CS   | 2  |
| Ravi  | CS   | 3  |
| Kavi  | IT   | 1  |
| Priya | IT   | 2  |
+-------+------+----+

Q15. Find the highest-marked student using ROW_NUMBER().


SELECT *
FROM (
    SELECT NAME, MARKS,
           ROW_NUMBER() OVER(ORDER BY MARKS DESC) AS RN
    FROM STUDENT
) T
WHERE RN = 1;
Answer:
+-------+-------+----+
| NAME  | MARKS | RN |
+-------+-------+----+
| Priya | 92    | 1  |
+-------+-------+----+