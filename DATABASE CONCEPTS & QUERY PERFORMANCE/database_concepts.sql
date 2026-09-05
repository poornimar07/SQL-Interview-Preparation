
-- WEEK 7: DATABASE CONCEPTS & QUERY PERFORMANCE
-- Topics:
-- 1. Primary Keys
-- 2. Foreign Keys
-- 3. Relationships Between Tables


-- =====================================================
-- 1. PRIMARY KEY
-- =====================================================

CREATE TABLE DEPARTMENT (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(50) NOT NULL
);

INSERT INTO DEPARTMENT (DEPT_ID, DEPT_NAME)
VALUES
(101, 'Data Analytics'),
(102, 'IT'),
(103, 'HR');


-- =====================================================
-- 2. FOREIGN KEY
-- =====================================================

CREATE TABLE EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50) NOT NULL,
    SALARY DECIMAL(10,2),
    DEPT_ID INT,

    CONSTRAINT FK_EMP_DEPT
    FOREIGN KEY (DEPT_ID)
    REFERENCES DEPARTMENT(DEPT_ID)
);


INSERT INTO EMPLOYEE (EMP_ID, EMP_NAME, SALARY, DEPT_ID)
VALUES
(1, 'Poornima', 45000, 101),
(2, 'Rahul', 50000, 102),
(3, 'Priya', 55000, 101),
(4, 'Arun', 40000, 103);


-- =====================================================
-- 3. ONE-TO-MANY RELATIONSHIP
-- =====================================================
-- One department can have many employees.
-- DEPARTMENT = Parent table
-- EMPLOYEE   = Child table


SELECT
    D.DEPT_ID,
    D.DEPT_NAME,
    E.EMP_ID,
    E.EMP_NAME,
    E.SALARY
FROM DEPARTMENT D
INNER JOIN EMPLOYEE E
    ON D.DEPT_ID = E.DEPT_ID;


-- =====================================================
-- 4. CHECK PRIMARY KEY
-- =====================================================

SELECT *
FROM DEPARTMENT;


SELECT *
FROM EMPLOYEE;


-- =====================================================
-- 5. FOREIGN KEY RELATIONSHIP
-- =====================================================

SELECT
    E.EMP_NAME,
    E.SALARY,
    D.DEPT_NAME
FROM EMPLOYEE E
JOIN DEPARTMENT D
    ON E.DEPT_ID = D.DEPT_ID
ORDER BY E.SALARY DESC;


-- =====================================================
-- 6. GROUP BY USING RELATIONSHIP
-- =====================================================

SELECT
    D.DEPT_NAME,
    COUNT(E.EMP_ID) AS TOTAL_EMPLOYEES,
    AVG(E.SALARY) AS AVG_SALARY
FROM DEPARTMENT D
LEFT JOIN EMPLOYEE E
    ON D.DEPT_ID = E.DEPT_ID
GROUP BY D.DEPT_ID, D.DEPT_NAME;


-- =====================================================
-- END OF WEEK 7
-- =====================================================