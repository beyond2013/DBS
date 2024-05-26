# Joins
Joins in SQL are used to combine rows from two or more tables based on a related column between them. They are fundamental in relational database systems to retrieve data spread across multiple tables. Here are the primary types of joins, their uses, and examples for better understanding:

### 1. Inner Join
**Definition:** Returns only the rows that have matching values in both tables.

**Use Case:** When you need to fetch records that have corresponding entries in both tables.

**SQL Syntax:**
```sql
SELECT table1.column1, table2.column2
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;
```
[See sql examples here](./mysql_inner_join.md)

### 2. Left Join (or Left Outer Join)
**Definition:** Returns all the rows from the left table and the matched rows from the right table. If there is no match, NULL values are returned for columns from the right table.

**Use Case:** When you need all records from the left table, regardless of whether there is a matching record in the right table.

**SQL Syntax:**
```sql
SELECT table1.column1, table2.column2
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;
```

[See sql examples here](./mysql_left_join.md)

### 3. Right Join (or Right Outer Join)
**Definition:** Returns all the rows from the right table and the matched rows from the left table. If there is no match, NULL values are returned for columns from the left table.

**Use Case:** When you need all records from the right table, regardless of whether there is a matching record in the left table.

**SQL Syntax:**
```sql
SELECT table1.column1, table2.column2
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column;
```

[See sql examples here](./mysql_right_join.md)


### 4. Full Join (or Full Outer Join)
**Definition:** Returns all rows when there is a match in one of the tables. This means it returns all the rows from the left table and the right table, with NULLs in places where there is no match.

**Use Case:** When you need all records from both tables, regardless of whether there is a matching record in the other table.

**SQL Syntax:**
```sql
SELECT table1.column1, table2.column2
FROM table1
FULL OUTER JOIN table2
ON table1.common_column = table2.common_column;
```

**Example:**
To find all students and courses, including those students who are not enrolled in any course and courses that have no students enrolled:
```sql
SELECT students.name, enrollments.course_id
FROM students
FULL OUTER JOIN enrollments
ON students.student_id = enrollments.student_id;
```

### 5. Cross Join
**Definition:** Returns the Cartesian product of the two tables, i.e., it returns all possible combinations of rows from the tables.

**Use Case:** When you need to combine each row of the first table with all rows of the second table, often used in generating combinations.

**SQL Syntax:**
```sql
SELECT table1.column1, table2.column2
FROM table1
CROSS JOIN table2;
```

**Example:**
To list all possible student-course pairs:
```sql
SELECT students.name, courses.course_name
FROM students
CROSS JOIN courses;
```

### 6. Self Join
**Definition:** A self join is a regular join but the table is joined with itself.

**Use Case:** When you need to compare rows within the same table.

**SQL Syntax:**
```sql
SELECT A.column1, B.column2
FROM table A, table B
WHERE condition;
```

**Example:**
To find pairs of employees where one is the manager of the other:
```sql
SELECT A.employee_name AS Employee, B.employee_name AS Manager
FROM employees A
INNER JOIN employees B
ON A.manager_id = B.employee_id;
```

### Summary
- **Inner Join:** Returns rows with matching values in both tables.
- **Left Join:** Returns all rows from the left table, and matched rows from the right table (with NULLs if no match).
- **Right Join:** Returns all rows from the right table, and matched rows from the left table (with NULLs if no match).
- **Full Join:** Returns all rows when there is a match in one of the tables.
- **Cross Join:** Returns Cartesian product of two tables.
- **Self Join:** Joins a table with itself to compare rows within the same table.

These joins help in combining data from multiple tables, allowing for more complex queries and data retrieval that is essential in relational database management.