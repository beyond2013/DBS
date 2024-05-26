**Contents presented here have been taken from 2nd Chapter "Introduction to Relational Databases", of the book "Database Systems An Application-Oriented Approach 2nd Edition", by Michael Kifer, Arthur Bernstein and Philip M. Lewis**

# Introduction to Relational Databases

## Table, Rows and columns
In Relational databases data is stored in tables.

For example, Student Registration System might include the STUDENT table.

|Id        | Name       | Address | Status|
|----------|------------|---------|-------|
|1111111   | John Doe | 423 Main St.| Freshman |
|666666666 | Joseph Public |666 Hollow Rd. |Sophomore|
|111223344 | Mary Smith |1 Lake St.| Freshman |
|987654321 |  Bart Simpson | Fox 5 TV |Senior |
|023456789 | Homer Simpson | Fox 5 TV | Senior |
|123454321 | Joe Blow |6 Yard Ct.| Junior|
||

Table: The table STUDENT. Each row describes a single student.

- A table contains a set of rows. Each row contains information about one student.
- Each column of the table describes the student in a particular way.
- In example above the columns are id, Name, Address, and Status.
- Each column has an associated type, called its domain, from which the value in a particular row for that column is drawn. For example the domain for Id is integer and the domain for Name is string.

This database model is called "relational" because it is based on the mathematical concept of relation.

A **mathematical relation** captures the notion that elements of different sets are related to one another. 

For example, *John Doe*, an element of the set of all humans, is related to *123 Main St.*, an element of the set of all addresses, and to *1111111111,* an element of the set of all Ids.  

A relation is a set of **tuples**.  

For example, of the table **STUDENT**, we might define a relation called **STUDENT** containing the tuple (1111111, John Doe, 423 Main St., Freshman).   


| Tables   | Relations |
|----------|-----------|
| Rows     | Tuples    |
| Columns  | Attributes|

Table:  Correspondence between tables and relations

## Operations on tables are mathematically defined

In most applications, the database is under the control of a database management systems (DBMS). When an application wants to perform an operation on the database, it does so by making a request to the DBMS.   

A typical operation might  

- extract some information from the rows of one or more tables,
- add rows, or
- delete rows.

In addition to the fact that tables in the database can be modeled by mathematical relations, operations on the tables can also be modeled as mathematical operations on the corresponding relations.  

Thus, a particular unary operation might take a table, T, as an argument and produce a result table containing a subset of the rows of T. 

For example:

1. an instructor might want to display the roster of students registered for a course. Such a request might involve scanning the TRANSCRIPT table, locating the rows corresponding to the course, and returning them to the application.  
2. a particular binary operation might take two tables as arguments and construct a new table containing the union of the rows of the argument tables.  

A complex query against a database might be equivalent to an expression involving many such relational operations involving many tables.  

Because of this mathematical description, relational operations can be precisely defined and their mathematical properties, such as commutativity and associativity, can be proven.   

This mathematical description has important practical implications. Commercial DBMSs contain a query optimizer module that converts queries into expression involving relational operations and then uses these mathematical properties to simplify those expressions and thus optimize query execution.  


