
09_GROUP_BY

Q1. Count how many students are in each department.

Answer:

SELECT DEPARTMENT, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
FROM STUDENT
GROUP BY DEPARTMENT;

Table Answer:

DEPARTMENT | TOTAL_STUDENTS
-----------|---------------
IT         | 2
ECE        | 1
CSE        | 1


Q2. Count how many students are in each city.

Answer:

SELECT CITY, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
FROM STUDENT
GROUP BY CITY;

Table Answer:

CITY     | TOTAL_STUDENTS
---------|---------------
Chennai  | 3
Madurai  | 1


Q3. Find the average marks of each department.

Answer:

SELECT DEPARTMENT, AVG(MARKS) AS AVG_MARKS
FROM STUDENT
GROUP BY DEPARTMENT;

Table Answer:

DEPARTMENT | AVG_MARKS
-----------|----------
IT         | 87.5
ECE        | 92
CSE        | 78


Q4. Find the highest marks scored in each department.

Answer:

SELECT DEPARTMENT, MAX(MARKS) AS HIGHEST_MARKS
FROM STUDENT
GROUP BY DEPARTMENT;

Table Answer:

DEPARTMENT | HIGHEST_MARKS
-----------|--------------
IT         | 90
ECE        | 92
CSE        | 78


Q5. Find the lowest marks scored in each department.

Answer:

SELECT DEPARTMENT, MIN(MARKS) AS LOWEST_MARKS
FROM STUDENT
GROUP BY DEPARTMENT;

Table Answer:

DEPARTMENT | LOWEST_MARKS
-----------|-------------
IT         | 85
ECE        | 92
CSE        | 78


Q6. Find the total marks scored by students in each city.

Answer:

SELECT CITY, SUM(MARKS) AS TOTAL_MARKS
FROM STUDENT
GROUP BY CITY;

Table Answer:

CITY     | TOTAL_MARKS
---------|------------
Chennai  | 267
Madurai  | 78


Q7. Display departments having more than 1 student.

Answer:

SELECT DEPARTMENT, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
FROM STUDENT
GROUP BY DEPARTMENT
HAVING COUNT(STUDENT_ID) > 1;

Table Answer:

DEPARTMENT | TOTAL_STUDENTS
-----------|---------------
IT         | 2


Q8. Display departments whose average marks is above 80.

Answer:

SELECT DEPARTMENT, AVG(MARKS) AS AVG_MARKS
FROM STUDENT
GROUP BY DEPARTMENT
HAVING AVG(MARKS) > 80;

Table Answer:

DEPARTMENT | AVG_MARKS
-----------|----------
IT         | 87.5
ECE        | 92


Q9. Group students by department and city, showing count in each combination.

Answer:

SELECT DEPARTMENT, CITY, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
FROM STUDENT
GROUP BY DEPARTMENT, CITY;

Table Answer:

DEPARTMENT | CITY     | TOTAL_STUDENTS
-----------|----------|---------------
IT         | Chennai  | 2
ECE        | Chennai  | 1
CSE        | Madurai  | 1


Q10. Find departments where the highest mark is above 90, sorted by highest mark descending.

Answer:

SELECT DEPARTMENT, MAX(MARKS) AS HIGHEST_MARKS
FROM STUDENT
GROUP BY DEPARTMENT
HAVING MAX(MARKS) > 90
ORDER BY HIGHEST_MARKS DESC;

Table Answer:

DEPARTMENT | HIGHEST_MARKS
-----------|--------------
ECE        | 92


Q11. Count students in each city, only from Chennai city.

Answer:

SELECT CITY, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
FROM STUDENT
WHERE CITY = 'Chennai'
GROUP BY CITY;

Table Answer:

CITY     | TOTAL_STUDENTS
---------|---------------
Chennai  | 3


Q12. Find average marks per department, only for students with marks 80 or above.

Answer:

SELECT DEPARTMENT, AVG(MARKS) AS AVG_MARKS
FROM STUDENT
WHERE MARKS >= 80
GROUP BY DEPARTMENT;

Table Answer:

DEPARTMENT | AVG_MARKS
-----------|----------
IT         | 87.5
ECE        | 92


Q13. Count number of students in each department, sorted from highest count to lowest.

Answer:

SELECT DEPARTMENT, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
FROM STUDENT
GROUP BY DEPARTMENT
ORDER BY TOTAL_STUDENTS DESC;

Table Answer:

DEPARTMENT | TOTAL_STUDENTS
-----------|---------------
IT         | 2
ECE        | 1
CSE        | 1


Q14. Find departments where total marks scored is above 150.

Answer:

SELECT DEPARTMENT, SUM(MARKS) AS TOTAL_MARKS
FROM STUDENT
GROUP BY DEPARTMENT
HAVING SUM(MARKS) > 150;

Table Answer:

DEPARTMENT | TOTAL_MARKS
-----------|------------
IT         | 175


Q15. Find the number of distinct departments present in each city.

Answer:

SELECT CITY, COUNT(DISTINCT DEPARTMENT) AS DEPARTMENT_COUNT
FROM STUDENT
GROUP BY CITY;

Table Answer:

CITY     | DEPARTMENT_COUNT
---------|------------------
Chennai  | 2
Madurai  | 1
