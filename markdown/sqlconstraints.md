**Note: contents presented here have been taken from [w3schools online tutorial](https://www.w3schools.com/sql/sql_constraints.asp)**

# SQL constraints

SQL constraints are used to specify rules for data in a table.

## SQL Create Constraints
Constraints can be specified when the table is created with the CREATE TABLE statement, or after the table is created with the ALTER TABLE statement.

```sql
Syntax
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);
```
## SQL Constraints

SQL constraints are used to specify rules for the data in a table.

Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.

Constraints can be column level or table level. Column level constraints apply to a column, and table level constraints apply to the whole table.

The following constraints are commonly used in SQL:

- NOT NULL - Ensures that a column cannot have a NULL value
- UNIQUE - Ensures that all values in a column are different
- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
- FOREIGN KEY - Uniquely identifies a row/record in another table
- CHECK - Ensures that all values in a column satisfies a specific condition
- DEFAULT - Sets a default value for a column when no value is specified
- INDEX - Used to create and retrieve data from the database very quickly

## SQL NOT NULL Constraint
By default, a column can hold NULL values.

The NOT NULL constraint enforces a column to NOT accept NULL values.

This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.

### SQL NOT NULL on CREATE TABLE
The following SQL ensures that the **ID**, **LastName**, and **FirstName** columns will NOT accept NULL values when the **Persons** table is created:

Example
```sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);
```

### SQL NOT NULL on ALTER TABLE
To create a NOT NULL constraint on the **Age** column when the **Persons** table is already created, use the following SQL:

```sql
ALTER TABLE Persons
MODIFY Age int NOT NULL;
```

## SQL UNIQUE Constraint
The UNIQUE constraint ensures that all values in a column are different.

Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.

A PRIMARY KEY constraint automatically has a UNIQUE constraint.

However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.

### SQL UNIQUE Constraint on CREATE TABLE
The following SQL creates a UNIQUE constraint on the **ID** column when the **Persons** table is created:

```sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);
```

### SQL UNIQUE Constraint on ALTER TABLE
To create a UNIQUE constraint on the **ID** column when the table is already created, use the following SQL:

```sql
ALTER TABLE Persons
ADD UNIQUE (ID);
```

## SQL PRIMARY KEY Constraint
The PRIMARY KEY constraint uniquely identifies each record in a table.

Primary keys must contain UNIQUE values, and cannot contain NULL values.

A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).

### SQL PRIMARY KEY on CREATE TABLE
The following SQL creates a PRIMARY KEY on the **ID** column when the **Persons** table is created:

```sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
```

### SQL PRIMARY KEY on ALTER TABLE
To create a PRIMARY KEY constraint on the **ID** column when the table is already created, use the following SQL:

```sql 
ALTER TABLE Persons
ADD PRIMARY KEY (ID);
```

## DROP a PRIMARY KEY Constraint
To drop a PRIMARY KEY constraint, use the following SQL:

```sql
ALTER TABLE Persons
DROP PRIMARY KEY;
```

## SQL FOREIGN KEY Constraint
A FOREIGN KEY is a key used to link two tables together.

A FOREIGN KEY is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table.

The table containing the foreign key is called the child table, and the table containing the candidate key is called the referenced or parent table.

Look at the following two tables:

**Persons** table:


|PersonID |LastName   |	FirstName |	Age |
|---------|-----------|-----------|-----|
|1	      |Hansen	  | Ola       |	30  |
|2	      |Svendson   |	Tove      |	23  |
|3	      |Pettersen  |	Kari      | 20  |


**Orders** table:


|OrderID|OrderNumber |PersonID |
|-------|------------|---------|
|1	    |123         |  1      |
|2	    |456         |  1      |
|3	    |678         |	2      |


Notice that the **PersonID** column in the **Orders** table points to the **PersonID** column in the **Persons** table.

The **PersonID** column in the **Persons** table is the PRIMARY KEY in the **Persons** table.

The **PersonID** column in the **Orders** table is a FOREIGN KEY in the **Orders** table.

The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.

The FOREIGN KEY constraint also prevents invalid data from being inserted into the foreign key column, because it has to be one of the values contained in the table it points to.

### SQL FOREIGN KEY on CREATE TABLE
The following SQL creates a FOREIGN KEY on the **PersonID** column when the **Orders** table is created:

```sql
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
```

### SQL FOREIGN KEY on ALTER TABLE

To create a FOREIGN KEY constraint on the **PersonID** column when the **Orders** table is already created, use the following SQL:

```sql
ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);
```

## SQL CHECK Constraint

The CHECK constraint is used to limit the value range that can be placed in a column.

If you define a CHECK constraint on a single column it allows only certain values for this column.

If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.


### SQL CHECK on CREATE TABLE
The following SQL creates a CHECK constraint on the **Age** column when the **Persons** table is created. The CHECK constraint ensures that you can not have any person below 18 years:


```sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);
```
### SQL CHECK on ALTER TABLE
To create a CHECK constraint on the **Age** column when the table is already created, use the following SQL:

```sql
ALTER TABLE Persons
ADD CHECK (Age>=18);
```
## SQL DEFAULT Constraint

The DEFAULT constraint is used to provide a default value for a column.

The default value will be added to all new records IF no other value is specified.

### SQL DEFAULT on CREATE TABLE
The following SQL sets a DEFAULT value for the **City** column when the **Persons** table is created:

```sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);
```

### SQL DEFAULT on ALTER TABLE

To create a DEFAULT constraint on the **City** column when the table is already created, use the following SQL:

```sql
ALTER TABLE Persons
ALTER City SET DEFAULT 'Sandnes';
```

## SQL CREATE INDEX Statement

The CREATE INDEX statement is used to create indexes in tables.

Indexes are used to retrieve data from the database very fast. The users cannot see the indexes, they are just used to speed up searches/queries.
Note: Updating a table with indexes takes more time than updating a table without (because the indexes also need an update). So, only create indexes on columns that will be frequently searched against.

### CREATE INDEX Syntax

Creates an index on a table. Duplicate values are allowed:

```sql 
CREATE INDEX index_name
ON table_name (column1, column2, ...);
``` 

### CREATE UNIQUE INDEX Syntax
Creates a unique index on a table. Duplicate values are not allowed:

```sql 
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...);
```

### CREATE INDEX Example
The SQL statement below creates an index named **idx\_lastname** on the **LastName** column in the **Persons** table:

```sql
CREATE INDEX idx_lastname
ON Persons (LastName);
```


