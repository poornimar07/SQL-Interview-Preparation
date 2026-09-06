
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




# 📚 Database Concepts & Query Performance

---

## 1️⃣ Normalization

Normalization is the process of organizing data in a database to reduce **data redundancy** and improve **data integrity**.

### 1NF — First Normal Form

- Each column should contain **atomic / single values**
- No multiple values in one cell
- No repeating groups

### 2NF — Second Normal Form

- Must already satisfy **1NF**
- No **partial dependency**
- Every non-key column should depend on the **entire primary key**

### 3NF — Third Normal Form

- Must already satisfy **2NF**
- No **transitive dependency**
- Non-key columns should depend only on the **primary key**

### 🔹 Simple Example

**❌ Not Normalized**

```text
+------------+--------------+-------------+
| STUDENT_ID | STUDENT_NAME | COURSE      |
+------------+--------------+-------------+
| 101        | Ravi         | SQL, Python |
+------------+--------------+-------------+
```

**✅ 1NF**

```text
+------------+--------------+---------+
| STUDENT_ID | STUDENT_NAME | COURSE  |
+------------+--------------+---------+
| 101        | Ravi         | SQL     |
| 101        | Ravi         | Python  |
+------------+--------------+---------+
```

### 🧠 Easy Way to Remember

```text
1NF → Atomic Values
2NF → No Partial Dependency
3NF → No Transitive Dependency
```

---

# 2️⃣ Constraints

Constraints are rules applied to table columns to maintain **data integrity and accuracy**.

### NOT NULL

Prevents a column from storing NULL values.

```sql
CREATE TABLE STUDENT (
    STUDENT_ID INT,
    NAME VARCHAR(50) NOT NULL
);
```

### UNIQUE

Prevents duplicate values.

```sql
CREATE TABLE STUDENT (
    STUDENT_ID INT,
    EMAIL VARCHAR(100) UNIQUE
);
```

### CHECK

Ensures that values satisfy a specified condition.

```sql
CREATE TABLE STUDENT (
    STUDENT_ID INT,
    AGE INT CHECK (AGE >= 18)
);
```

### PRIMARY KEY

Uniquely identifies each record in a table.

```sql
CREATE TABLE STUDENT (
    STUDENT_ID INT PRIMARY KEY,
    NAME VARCHAR(50)
);
```

**Key points:**
- Uniquely identifies each row
- Cannot contain NULL
- Duplicate values are not allowed

### FOREIGN KEY

Creates a relationship between two tables.

```sql
CREATE TABLE ORDERS (
    ORDER_ID INT PRIMARY KEY,
    STUDENT_ID INT,
    FOREIGN KEY (STUDENT_ID)
    REFERENCES STUDENT(STUDENT_ID)
);
```

---

3 Indexes

## What is an Index?

An **index** is a database structure that helps MySQL find rows more efficiently, especially when searching or filtering data.

### Example

CREATE INDEX idx_salary
ON EINFO(SALARY);


Query using the indexed column:


SELECT EMPID,
       ENAME,
       SALARY
FROM EINFO
WHERE SALARY > 50000;

---Index Trade-Off


INDEX
  ↓
Faster SELECT / Searching
  ↓
But
  ↓
Extra Storage
  +
INSERT / UPDATE / DELETE may become slower



4 Query Performance

## EXPLAIN

`EXPLAIN` helps understand how MySQL plans to execute a query.

EXPLAIN
SELECT EMPID,
       ENAME,
       SALARY
FROM EINFO
WHERE SALARY > 50000;

### EXPLAIN Can Help Understand

- Which table is accessed
- Whether an index is being considered/used
- Estimated rows examined
- The execution strategy chosen by MySQL


## SELECT * and Performance

Instead of:

```sql
SELECT *
FROM EINFO;
```

Prefer selecting only the required columns:

```sql
SELECT EMPID,
       ENAME,
       DEPTID,
       SALARY
FROM EINFO;
```

### Why Avoid Unnecessary `SELECT *`?

```text
SELECT *
   ↓
Retrieves unnecessary columns
   ↓
More data transferred
   ↓
More processing
   ↓
Harder maintenance when table structure changes
```


 Transactions

A **transaction** is a group of SQL operations treated as a single logical unit of work.

### Example

START TRANSACTION;

UPDATE EINFO
SET SALARY = SALARY + 5000
WHERE EMPID = 101;

UPDATE EINFO
SET SALARY = SALARY - 5000
WHERE EMPID = 102;

COMMIT;

If something goes wrong before `COMMIT`:


ROLLBACK;

### Transaction Flow



START TRANSACTION
        ↓
   SQL Operations
        ↓
   ┌────┴────┐
   ↓         ↓
Success    Failure
   ↓         ↓
 COMMIT    ROLLBACK


# ACID Properties

ACID represents the four important properties of database transactions.

## A — Atomicity

All operations in a transaction succeed together, or the transaction is rolled back.


All Operations
      ↓
   Success → COMMIT
   Failure → ROLLBAC



## C — Consistency

A transaction should take the database from one **valid state to another valid state**.

## I — Isolation

Concurrent transactions should not incorrectly interfere with each other.

## D — Durability

Once a transaction is committed, its changes should remain saved even after a system failure.

---

# 🧠 Interview Quick Revision

```text
NORMALIZATION
────────────────────────────
1NF → Atomic Values
2NF → No Partial Dependency
3NF → No Transitive Dependency


CONSTRAINTS
────────────────────────────
NOT NULL    → No NULL Values
UNIQUE      → No Duplicate Values
CHECK       → Condition
PRIMARY KEY → Unique Row Identifier
FOREIGN KEY → Table Relationship


INDEX
────────────────────────────
→ Faster Searching
→ Extra Storage
→ Can Slow INSERT / UPDATE / DELETE


EXPLAIN
────────────────────────────
→ Understand Query Execution Plan


TRANSACTION
────────────────────────────
→ Group of SQL Operations


ACID
────────────────────────────
A → Atomicity
C → Consistency
I → Isolation
D → Durability
```


## 🎯 Interview Focus

⭐ 1NF vs 2NF vs 3NF
⭐ Primary Key vs Foreign Key
⭐ UNIQUE vs PRIMARY KEY
⭐ Index advantages and disadvantages
⭐ When to use an Index
⭐ EXPLAIN
⭐ Why avoid unnecessary SELECT *
⭐ COMMIT vs ROLLBACK
⭐ ACID Properties


-- =====================================================
-- END OF WEEK 7
-- =====================================================

