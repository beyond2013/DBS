**Credits: Contents presented here have been taken from [w3schools.in](https://www.w3schools.in/definition/what-is-nosql/)**

# NoSQL Systems

Databases can be considered as one of the important component entity for technology and applications. Data need to be stored in a specific structure and format to retrieve it whenever required. But, there are situations where data are not always in a structured format, i.e., their schemas are not rigid. In this chapter, you will learn in details about NoSQL and its characteristic features.


## What Is NoSQL?

NoSQL can be defined as an approach to database designing, which holds a vast diversity of data such as key-value, multimedia, document, columnar, graph formats, external files, etc. NoSQL is purposefully developed for handling specific data models having flexible schemas to build modern applications.
NoSQL is famous for its high functionality, ease of development with a performance at scale. Because of such diverse data handling feature, NoSQL is called a non-relational database. It does not follow the rules of Relational Database Management Systems (RDBMS), and hence do not use traditional SQL statements to query your data. Some famous examples are MongoDB, Neo4J, HyperGraphDB, etc.

## Types of NoSQL Databases

NoSQL databases usually fall under any one of these four categories:
Key-value stores: is the most straightforward type where every item of your database gets stored in the form of an attribute name (i.e., "key") along with the value.
Wide-column stores: accumulate data collectively as a column rather than rows which are optimized for querying big datasets.
Document databases: couple every key with a composite data structure termed as a document. These documents hold a lot of different key-value pairs, as well as key-array pairs or sometimes nested documents.
Graph databases: are used for storing information about networks, like social connections.

## Difference Between NoSQL and SQL

Here is the list of comparisons between both the DBMS:

SQL databases are mainly coming under Relational Databases (RDBMS) whereas NoSQL databases mostly come under non-relational or distributed database.
SQL databases are table-oriented databases, whereas NoSQL databases document-oriented have key-value pairs or wide-column stores or graph databases.
SQL databases have a predefined or static schema that is rigid, whereas NoSQL databases have dynamic or flexible schema to handle unstructured data.
SQL is used to store structured data, whereas NoSQL is used to store structured as well as unstructured data.
SQL databases can be considered as vertically scalable, but NoSQL databases are considered horizontally scalable.
Scaling of SQL databases is done by mounting the horse-power of your hardware. But, scaling of NoSQL databases is calculated by mounting the databases servers for reducing the load.
Examples of SQL databases: MySql, Sqlite, Oracle, Postgres SQL, and MS-SQL. Examples of NoSQL databases: BigTable, MongoDB, Redis, Cassandra, RavenDb, Hbase, CouchDB and Neo4j
When your queries are complex SQL databases are a good fit for the intensive environment, and NoSQL databases are not an excellent fit for complex queries. Queries of NoSQL are not that powerful as compared to SQL query language.
SQL databases need vertical scalability, i.e., excess of load can be managed by increasing the CPU, SSD, RAM, GPU, etc., on your server. In the case of NoSQL databases, they horizontally scalable, i.e., the addition of more servers will ease out the load management thing to handle.

