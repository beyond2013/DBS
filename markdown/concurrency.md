**Credits: contents presented here have been taken from [w3schools.in](https://www.w3schools.in/dbms/transaction-and-concurrency-control/)**

# Transactions and Concurrency Control

Two closely related function any database should provide in order to be reliable are 

1. Transaction support.
2. Concurrency Control.

Although each function can be discussed discretely, they are mutually dependent. Many DBMSs allow users to carry out simultaneous operations on the database. If these operations are not restricted, the accesses may get in the way with one another, and the database can become incompatible. For defeating this problem, the DBMS implements a concurrency control technique using a protocol that prevents database accesses from prying with one another. In this chapter, you will learn about the concurrency control and transaction support for any centralized DBMS that consists of a single database.


# What is Transaction in DBMS?
It is an action or sequence of actions passed out by a single user and/or application program that reads or updates the contents of the database. A transaction is a logical piece of work of any database, which may be a complete program, a fraction of a program, or a single command (like the: SQL command INSERT or UPDATE) that may involve any number of processes on the database. From the database point of view, the implementation of an application program can be considered as one or more transactions with non-database processing working in between.
Let's pick up an example of a simple transaction where a user transfers 620 from A's account into B's account. This transaction may seem small and straightforward but includes more than a few low-level tasks within it.

```
The first one is A's Account:

Open_Acct(A)
Old_Bal = A.bal
New_Bal = Old_Bal - 620
A.bal = New_Bal
Close_Acct(A)
The 2nd one is B's transaction:

Open_Acct(B)
Old_Bal = B.bal
New_Bal = Old_Bal + 620
B.bal = New_Bal
Close_Acct(B)
```
You can also see the DBMS Transactions page to get more information about DBMS transactions.

It is to be noted that the transaction is very closely related to concurrency control.

## What is Concurrency Control in DBMS?
It is the method of managing concurrent operations on the database without getting any obstruction with one another.

# The Need for Concurrency Control
A key purpose in developing a database is to facilitate multiple users to access shared data in parallel (i.e., at the same time). Concurrent accessing of data is comparatively easy when all users are only reading data, as there is no means that they can interfere with one another. However, when multiple users are accessing the database at the same time, and at least one is updating data, there may be the case of interference, which can result in data inconsistencies.

Concurrency control technique implements some protocols which can be broadly classified into two categories. These are:

Lock-based protocol: Those database systems that are prepared with the concept of lock-based protocols employ a mechanism where any transaction cannot read or write data until it gains a suitable lock on it.
Timestamp-based Protocol: It is the most frequently used concurrency protocol is the timestamp-based protocol. This protocol uses either system time or logical counter as a timestamp.
