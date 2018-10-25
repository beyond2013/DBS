# Note:  

**Contents of this file have been taken from chapter 3 of the book Database Systems: An application oriented approach 2nd Edition by Michael Kifer, Arthur Bernstein, and Philip M. Lewis.**

# The Relational Data Model

Ultimately all data is recorded as bytes on a disk. However working with data at this low level of abstraction is quite tedious. Few people are interested in how sectors, tracks, and cylinders are allocated for storing information. Most programmers prefer to work with data stored in **files**, which is a more reasonable abtraction for many applications.

A variety of methods exist for storing data in files. **Sequential files** are best for applications that access records in the order in which they were stored. **Direct Access** or random access files are best when records are accessed in a more or less unpredictable order.
Files might have indices, which are auxilary data structuresthat enable applications to retrieve records based on the value of a search key.

The details of how data is stored in files belong to the **physical level** of data modeling. This level is specified using a **physical schema**, which refers to the syntax that describe the structure of files and indices.

Early data-intensive applications worked directly with the physical schema. This choice was made for a numer of reasons: 
 
 1. Commercial database systems were rare and costly.
 2. 

