
Q1. Display all student names in uppercase.

Answer:

SELECT UPPER(NAME) AS UPPER_NAME
FROM STUDENT;

Table Answer:

NAME | UPPER_NAME
Ravi | RAVI
Priya | PRIYA
Arun | ARUN
Kaviya | KAVIYA
Siva | SIVA
Meena | MEENA
Kumar | KUMAR

Q2. Display all student names in lowercase.

Answer:

SELECT LOWER(NAME) AS LOWER_NAME
FROM STUDENT;

Table Answer:

NAME | LOWER_NAME
Ravi | ravi
Priya | priya
Arun | arun
Kaviya | kaviya
Siva | siva
Meena | meena
Kumar | kumar

Q3. Display each student name and its number of characters.

Answer:

SELECT NAME, LENGTH(NAME) AS NAME_LENGTH
FROM STUDENT;

Table Answer:

NAME | NAME_LENGTH
Ravi | 4
Priya | 5
Arun | 4
Kaviya | 6
Siva | 4
Meena | 5
Kumar | 5

Q4. Display the first 3 characters of each student name.

Answer:

SELECT NAME, LEFT(NAME, 3) AS FIRST_3_CHARACTERS
FROM STUDENT;

Table Answer:

NAME | FIRST_3_CHARACTERS
Ravi | Rav
Priya | Pri
Arun | Aru
Kaviya | Kav
Siva | Siv
Meena | Mee
Kumar | Kum

Q5. Display the last 3 characters of each student name.

Answer:

SELECT NAME, RIGHT(NAME, 3) AS LAST_3_CHARACTERS
FROM STUDENT;

Table Answer:

NAME | LAST_3_CHARACTERS
Ravi | avi
Priya | iya
Arun | run
Kaviya | iya
Siva | iva
Meena | ena
Kumar | mar

Q6. Display the first 3 characters of each student name using SUBSTRING().

Answer:

SELECT NAME, SUBSTRING(NAME, 1, 3) AS FIRST_3_CHARACTERS
FROM STUDENT;

Table Answer:

NAME | FIRST_3_CHARACTERS
Ravi | Rav
Priya | Pri
Arun | Aru
Kaviya | Kav
Siva | Siv
Meena | Mee
Kumar | Kum

Q7. Display the student name and department together.

Answer:

SELECT CONCAT(NAME, ' - ', DEPARTMENT) AS STUDENT_DETAILS
FROM STUDENT;

Table Answer:

STUDENT_DETAILS
Ravi - IT
Priya - CSE
Arun - IT
Kaviya - ECE
Siva - CSE
Meena - IT
Kumar - IT

Q8. Replace the department name IT with INFORMATION TECHNOLOGY.

Answer:

SELECT NAME,
REPLACE(DEPARTMENT, 'IT', 'INFORMATION TECHNOLOGY') AS DEPARTMENT
FROM STUDENT;

Table Answer:

NAME | DEPARTMENT
Ravi | INFORMATION TECHNOLOGY
Arun | INFORMATION TECHNOLOGY
Meena | INFORMATION TECHNOLOGY
Kumar | INFORMATION TECHNOLOGY

Q9. Remove extra spaces from student names.

Answer:

SELECT TRIM(NAME) AS CLEAN_NAME
FROM STUDENT;

Table Answer:

CLEAN_NAME
Ravi
Priya
Arun
Kaviya
Siva
Meena
Kumar

Q10. Display each student name in reverse order.

Answer:

SELECT NAME, REVERSE(NAME) AS REVERSED_NAME
FROM STUDENT;

Table Answer:

NAME | REVERSED_NAME
Ravi | ivaR
Priya | ayirP
Arun | nurA
Kaviya | ayivaK
Siva | aviS
Meena | aneeM
Kumar | ramuK

Q11. Display student names in uppercase and departments in lowercase.

Answer:

SELECT UPPER(NAME) AS STUDENT_NAME,
LOWER(DEPARTMENT) AS DEPARTMENT
FROM STUDENT;

Table Answer:

STUDENT_NAME | DEPARTMENT
RAVI | it
PRIYA | cse
ARUN | it
KAVIYA | ece
SIVA | cse
MEENA | it
KUMAR | it

Q12. Display students whose names contain more than 4 characters.

Answer:

SELECT NAME, LENGTH(NAME) AS NAME_LENGTH
FROM STUDENT
WHERE LENGTH(NAME) > 4;

Table Answer:

NAME | NAME_LENGTH
Priya | 5
Kaviya | 6
Meena | 5
Kumar | 5

Q13. Display students whose names start with the letter 'R'.

Answer:

SELECT NAME
FROM STUDENT
WHERE LEFT(NAME, 1) = 'R';

Table Answer:

NAME
Ravi

Q14. Display the last 2 characters of each city.

Answer:

SELECT CITY, RIGHT(CITY, 2) AS LAST_2_CHARACTERS
FROM STUDENT;

Table Answer:

CITY | LAST_2_CHARACTERS
Chennai | ai
Bangalore | re
Madurai | ai

Q15. Display student name and department together in uppercase.

Answer:

SELECT UPPER(CONCAT(NAME, ' - ', DEPARTMENT)) AS STUDENT_DETAILS
FROM STUDENT;

Table Answer:

STUDENT_DETAILS
RAVI - IT
PRIYA - CSE
ARUN - IT
KAVIYA - ECE
SIVA - CSE
MEENA - IT
KUMAR - IT

