# Note:  

**Contents of this file have been taken from chapter 3 of the book Database Systems: An application oriented approach 2nd Edition by Michael Kifer, Arthur Bernstein, and Philip M. Lewis.**

# The Relational Data Model

Ultimately all data is recorded as bytes on a disk. However working with data at this low level of abstraction is quite tedious. Few people are interested in how sectors, tracks, and cylinders are allocated for storing information. Most programmers prefer to work with data stored in **files**, which is a more reasonable abtraction for many applications.

A variety of methods exist for storing data in files. **Sequential files** are best for applications that access records in the order in which they were stored. **Direct Access** or random access files are best when records are accessed in a more or less unpredictable order.
Files might have indices, which are auxilary data structuresthat enable applications to retrieve records based on the value of a search key.

The details of how data is stored in files belong to the **physical level** of data modeling. This level is specified using a **physical schema**, which refers to the syntax that describe the structure of files and indices.

Early data-intensive applications worked directly with the physical schema. This choice was made for a numer of reasons: 
 
 1. Commercial database systems were rare and costly.
 2. Computers were slow and working directly with the file system offered a performance advantage.

A serious drawback of this approach is that changes to the file format at the physical level could hae costly repercussions for the software maintenance. The year 2000 problem was a good example of such repercussions. (The solution to the Y2K problem is data abstraction, a Date data type). 

The **conceptual model** hides the details of the physical data representation and instead describes data in terms of higher-level concepts that are closer to the way humans view it. 

For instance the conceptual schema could represent some of the information about students as 

STUDENT (Id: INT, Name: STRING, Address: STRING, Status: STRING)

While this schema might look similar to the way file records are represented, the important point is that the different pieces of information it describes might be physically stored in a different way than that described in the schema. Indeed, these pieces of information might not even reside in the same file(perhaps not even on the same computer).

The possibility of having separate schemas at the physical and conceptual levels leads to the simple yet powerful idea of physical data independence. 

Instead of working directly with the file system, applications see only the conceptual schema. The DBMS maps data between the conceptual and physical levels automatically. 

If the physical representation changes, all that needs to be done is to change the mapping between the levels, and all applications that deal exclusively with the conceptual schema will continue to work with the new physical data structures.

The third level of abstraction is called the **external schema**(also known as he user or view abstraction level). The external schema is used to customize the conceptual schema to the needs of various classes of users, and it also plays a role in database security.

The external schema looks and feels like a conceptual schema, and both are defined in essentially the same way in modern DBMSs. However, while there is a single conceptual schema per databse, there might be several external schemas, usually one per user category.

Conceptual data independence: Applications tailored to the needs of specific user groups can be designed to use the external schemas appropriate for these groups. The mapping between the external and conceptual schemas is the responsibility of the DBMS, so applications are insulated from changes in the conceptual schema as well as from changes in the physical schema. 

![](./figures/DataIndependence.jpeg)

**Data model** A data model consists of a set of concepts and languages for describing

1. Conceptual and external Schemas. A schema specifies the structure of the data stored in the  database. Schemas are described using a **data definition language(DDL)**.

2. Constraints: A constraint specifies condition that the data items in the database must satisfy. A constraint specification sublanguage is usually part of the DDL.

3. Operations on data: Operations on database items are described using a **data manipulation language(DML)**. The DML is usually the most important and interesting part of any data model because it is the set of operations that ultimately gives us the high-level data abstraction.

## Relational Model
Proposed by E. F. Codd in 1970 is built around a simple and natural mathematical structure the relation (or table). 

A relation is two things in one: a schema and an instance of that schema. A **relation instance** is nothing more than a table with rows and named columns. The rows in a relation are called **tuples**, no two tuples in a relation instance can be the same. The **cardinality** of a relation instance is the number of tuples in it. 

Because relations are set of tuples, the order of these tuples is considered immaterial. Similarly, because columns are named, their order in a table is of no importance either. 
Below is the instance of the student relation.

| Id   | Name  | Address        |
|------|-------|----------------|
| 1213 | Umer  | Satellite Town |
| 1456 | Obiad | Jinnah Town    |

Terms used in relational database theory and their SQL equivalent

| Relational Database theory | SQL    |
|----------------------------|--------|
| tuple                      | row    |
| attribute                  | column |
| relation                   | table  |

**Relation Schema** A relation schema consists of:

1. The name of the relation. Relation names must be unique across the database. 
2. The names of the attributes in the relation along with their associated domain names. A domain name is just a name given to some well-defined set of values. In programming languages, domain names are usually called types e.g. INTEGER, REAL, STRING.
3. The integrity constraint (IC). Integrity constraints are restrictions on the relational instrance of this schema(i.e., restrictions on which tuples can appear in an instance of the relation). An instance of a schema is said to be legal if it satisfies all ICs associated with the schema.

Below is the Student Schema:

STUDENT (Id: INTEGER, Name: STRING, Address: STRING)

This schema states that STUDENT relation must have exactly three attributes: Id, Name, Address with associated domains INTEGER and STRING. 
