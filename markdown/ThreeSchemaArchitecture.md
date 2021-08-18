**Credits: contents presented here have been taken from [online javatpoint DBMS tutorial](https://www.javatpoint.com/dbms-three-schema-architecture)**

# Three schema Architecture

- The three schema architecture is also called ANSI/SPARC architecture or three-level architecture.
- This framework is used to describe the structure of a specific database system.
- The three schema architecture is also used to separate the user applications and physical database.
- The three schema architecture contains three-levels. It breaks the database down into three different categories.
- The three-schema architecture is as follows:

![DBMS Three schema Architecture](dbms-three-schema-architecture.png)

- The above diagram shows the DBMS architecture.
- Mapping is used to transform the request and response between various database levels of architecture.
- Mapping is not good for small DBMS because it takes more time.
- In External / Conceptual mapping, it is necessary to transform the request from external level to conceptual schema.
- In Conceptual / Internal mapping, DBMS transform the request from the conceptual to internal level.

## 1. Internal Level

The internal level has an internal schema which describes the physical storage structure of the database.
The internal schema is also known as a physical schema.
It uses the physical data model. It is used to define that how the data will be stored in a block.
The physical level is used to describe complex low-level data structures in detail.

## 2. Conceptual Level

The conceptual schema describes the design of a database at the conceptual level. Conceptual level is also known as logical level.
The conceptual schema describes the structure of the whole database.
The conceptual level describes what data are to be stored in the database and also describes what relationship exists among those data.
In the conceptual level, internal details such as an implementation of the data structure are hidden.
Programmers and database administrators work at this level.

## 3. External Level

At the external level, a database contains several schemas that sometimes called as subschema. The subschema is used to describe the different view of the database.
An external schema is also known as view schema.
Each view schema describes the database part that a particular user group is interested and hides the remaining database from that user group.
The view schema describes the end user interaction with database systems.
