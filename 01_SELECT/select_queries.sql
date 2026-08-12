


SET 1 — SELECT + FROM — 15 Questions

1. Display all columns from the EMP table.
Answer:
SELECT *
FROM EMP;
Table Answer:
┌────────┬─────────┬──────────┬────────────┬────────┬────────────┬────────────┬─────────┬──────────┬──────┬────────────┐
│ EMPID  │ ENAME   │ DEPT     │ DESIG      │ GENDER │ DOJOIN     │ DOBIRTH    │ SALARY  │ LOCATION │ TYPE │ MOBILE     │
├────────┼─────────┼──────────┼────────────┼────────┼────────────┼────────────┼─────────┼──────────┼──────┼────────────┤
│ 101    │ Ravi    │ IT       │ Developer  │ MALE   │ 2023-01-10 │ 2000-05-12 │ 35000.00│ Chennai  │ P    │ 9876543210 │
│ 102    │ Priya   │ HR       │ Executive  │ FEMALE │ 2022-06-15 │ 2001-08-20 │ 30000.00│ Chennai  │ P    │ 9876543211 │
│ 103    │ Arun    │ Sales    │ Manager    │ MALE   │ 2021-03-20 │ 1998-02-10 │ 45000.00│ Delhi    │ F    │ 9876543212 │
└────────┴─────────┴──────────┴────────────┴────────┴────────────┴────────────┴─────────┴──────────┴──────┴────────────┘
________________________________________

2. Display only the employee names.
Answer:
SELECT ENAME
FROM EMP;
Table Answer:
┌─────────┐
│ ENAME   │
├─────────┤
│ Ravi    │
│ Priya   │
│ Arun    │
└─────────┘
________________________________________

3. Display only the employee IDs.
Answer:
SELECT EMPID
FROM EMP;
Table Answer:
┌────────┐
│ EMPID  │
├────────┤
│ 101    │
│ 102    │
│ 103    │
└────────┘
________________________________________

4. Display employee names and salaries.
Answer:
SELECT ENAME, SALARY
FROM EMP;
Table Answer:
┌─────────┬───────────┐
│ ENAME   │ SALARY    │
├─────────┼───────────┤
│ Ravi    │ 35000.00  │
│ Priya   │ 30000.00  │
│ Arun    │ 45000.00  │
└─────────┴───────────┘
________________________________________

5. Display employee names and departments.
Answer:
SELECT ENAME, DEPT
FROM EMP;
Table Answer:
┌─────────┬──────────┐
│ ENAME   │ DEPT     │
├─────────┼──────────┤
│ Ravi    │ IT       │
│ Priya   │ HR       │
│ Arun    │ Sales    │
└─────────┴──────────┘
________________________________________

6. Display employee names and designations.
Answer:
SELECT ENAME, DESIG
FROM EMP;
Table Answer:
┌─────────┬────────────┐
│ ENAME   │ DESIG      │
├─────────┼────────────┤
│ Ravi    │ Developer  │
│ Priya   │ Executive  │
│ Arun    │ Manager    │
└─────────┴────────────┘
________________________________________

7. Display employee names and locations.
Answer:
SELECT ENAME, LOCATION
FROM EMP;
Table Answer:
┌─────────┬──────────┐
│ ENAME   │ LOCATION │
├─────────┼──────────┤
│ Ravi    │ Chennai  │
│ Priya   │ Chennai  │
│ Arun    │ Delhi    │
└─────────┴──────────┘
________________________________________

8. Display employee ID, employee name, and salary.
Answer:
SELECT EMPID, ENAME, SALARY
FROM EMP;
Table Answer:
┌────────┬─────────┬───────────┐
│ EMPID  │ ENAME   │ SALARY    │
├────────┼─────────┼───────────┤
│ 101    │ Ravi    │ 35000.00  │
│ 102    │ Priya   │ 30000.00  │
│ 103    │ Arun    │ 45000.00  │
└────────┴─────────┴───────────┘
________________________________________

9. Display employee name, date of birth, and date of joining.
Answer:
SELECT ENAME, DOBIRTH, DOJOIN
FROM EMP;
Table Answer:
┌─────────┬────────────┬────────────┐
│ ENAME   │ DOBIRTH    │ DOJOIN     │
├─────────┼────────────┼────────────┤
│ Ravi    │ 2000-05-12 │ 2023-01-10 │
│ Priya   │ 2001-08-20 │ 2022-06-15 │
│ Arun    │ 1998-02-10 │ 2021-03-20 │
└─────────┴────────────┴────────────┘
________________________________________

10. Display employee ID, name, department, and designation.
Answer:
SELECT EMPID, ENAME, DEPT, DESIG
FROM EMP;
Table Answer:
┌────────┬─────────┬──────────┬────────────┐
│ EMPID  │ ENAME   │ DEPT     │ DESIG      │
├────────┼─────────┼──────────┼────────────┤
│ 101    │ Ravi    │ IT       │ Developer  │
│ 102    │ Priya   │ HR       │ Executive  │
│ 103    │ Arun    │ Sales    │ Manager    │
└────────┴─────────┴──────────┴────────────┘
________________________________________

11. Display employee name, gender, and salary.
Answer:
SELECT ENAME, GENDER, SALARY
FROM EMP;
Table Answer:
┌─────────┬────────┬───────────┐
│ ENAME   │ GENDER │ SALARY    │
├─────────┼────────┼───────────┤
│ Ravi    │ MALE   │ 35000.00  │
│ Priya   │ FEMALE │ 30000.00  │
│ Arun    │ MALE   │ 45000.00  │
└─────────┴────────┴───────────┘
________________________________________

12. Display employee name, salary, and location.
Answer:
SELECT ENAME, SALARY, LOCATION
FROM EMP;
Table Answer:
┌─────────┬───────────┬──────────┐
│ ENAME   │ SALARY    │ LOCATION │
├─────────┼───────────┼──────────┤
│ Ravi    │ 35000.00  │ Chennai  │
│ Priya   │ 30000.00  │ Chennai  │
│ Arun    │ 45000.00  │ Delhi    │
└─────────┴───────────┴──────────┘
________________________________________

13. Display employee ID, name, date of birth, and date of joining.
Answer:
SELECT EMPID, ENAME, DOBIRTH, DOJOIN
FROM EMP;
Table Answer:
┌────────┬─────────┬────────────┬────────────┐
│ EMPID  │ ENAME   │ DOBIRTH    │ DOJOIN     │
├────────┼─────────┼────────────┼────────────┤
│ 101    │ Ravi    │ 2000-05-12 │ 2023-01-10 │
│ 102    │ Priya   │ 2001-08-20 │ 2022-06-15 │
│ 103    │ Arun    │ 1998-02-10 │ 2021-03-20 │
└────────┴─────────┴────────────┴────────────┘
________________________________________

14. Display employee name, department, designation, and salary.
Answer:
SELECT ENAME, DEPT, DESIG, SALARY
FROM EMP;
Table Answer:
┌─────────┬──────────┬────────────┬───────────┐
│ ENAME   │ DEPT     │ DESIG      │ SALARY    │
├─────────┼──────────┼────────────┼───────────┤
│ Ravi    │ IT       │ Developer  │ 35000.00  │
│ Priya   │ HR       │ Executive  │ 30000.00  │
│ Arun    │ Sales    │ Manager    │ 45000.00  │
└─────────┴──────────┴────────────┴───────────┘
________________________________________

15. Display employee ID, name, department, salary, and mobile number.
Answer:
SELECT EMPID, ENAME, DEPT, SALARY, MOBILE
FROM EMP;
Table Answer:
┌────────┬─────────┬──────────┬───────────┬────────────┐
│ EMPID  │ ENAME   │ DEPT     │ SALARY    │ MOBILE     │
├────────┼─────────┼──────────┼───────────┼────────────┤
│ 101    │ Ravi    │ IT       │ 35000.00  │ 9876543210 │
│ 102    │ Priya   │ HR       │ 30000.00  │ 9876543211 │
│ 103    │ Arun    │ Sales    │ 45000.00  │ 9876543212 │
└────────┴─────────┴──────────┴───────────┴────────────┘

