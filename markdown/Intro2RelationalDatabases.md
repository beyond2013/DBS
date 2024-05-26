# Introduction to Relational Databases
## Relational Data Model

The relational data model is a fundamental concept in database management systems. It provides a structured way to organize and manage data in tables.

* **Attributes:** These are the individual characteristics that describe an entity (a real-world object) in a table.  They represent columns in a table.  For instance, in a `Students` table, attributes could be `student_id`, `name`, `major`, and `gpa`.
* **Domains:** Each attribute has a domain, which is a set of valid values that the attribute can hold.  The `student_id` attribute might have a domain of integers, while `name` would have a domain of strings, and `gpa` might be restricted to a domain of numbers between 0.0 and 4.0.
* **Tuples (Records):** A tuple (also called a record) represents a single data entry in a table. It's a collection of values that corresponds to each attribute in the table.  In the `Students` table, a tuple might be (`12345`, `John Smith`, `Computer Science`, `3.8`).
* **Relation Schemas:**  A relation schema defines the structure of a table.  It specifies the table name, its attributes, and their data types (e.g., integer, string, date).  The relation schema acts as a blueprint for the table, dictating the kind of data it can hold.
* **Relation Instances (Tables):** A relation instance,  often referred to as a table, is the actual data stored in the database that conforms to the relation schema.  It consists of tuples (rows) that represent individual data entries.

## Keys and Integrity Constraints:

* **Keys:**  A key is a set of attributes (one or more) that uniquely identifies a tuple (record) within a table.  There are different types of keys:
    * **Candidate Key:** Any set of attributes that can uniquely identify a tuple. A table can have multiple candidate keys.
    * **Primary Key:**  A chosen candidate key designated as the main identifier for the table. Each table must have exactly one primary key.
* **Integrity Constraints:**  These are rules enforced within a database to maintain data consistency and accuracy.  Common integrity constraints include:
    * **Entity Integrity:** Ensures that the primary key cannot have null values.  Every row must have a unique identifier.
    * **Referential Integrity:**  Guarantees the existence of referenced data.  For example, if a `Courses` table has a foreign key referencing the `instructor_id` in the `Instructors` table, referential integrity ensures that the referenced instructor actually exists.

## Relational Algebra for Data Manipulation:

Relational algebra is a theoretical framework for manipulating data in relational databases using operators. Here are some essential operators:

* **Selection:** Chooses tuples (rows) that satisfy a specific condition. Imagine selecting all students from the `Students` table with a GPA higher than 3.5.
* **Projection:** Creates a new table by selecting specific attributes from an existing table.  For instance, projecting only `student_id` and `name` from the `Students` table.
* **Cartesian Product:** Combines rows from two tables, creating all possible combinations of tuples. This can be useful for finding relationships between data in different tables.

By understanding these core concepts, you'll have a solid foundation for working with relational databases and effectively managing your data.