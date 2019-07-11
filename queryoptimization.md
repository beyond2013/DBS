# QUERY OPTIMIZATION
Following tips can be useful in optimizing queries:

1. Index all columns used in where, order by and group by clauses:
- An index allows MYSQL server to fetch results faster from a database. 
- It is also very useful when sorting records.
- Indexes may take up more storage space and decrease performance on inserts, deletes, and updates, however they can considerably reduce select query execution time.

Following examples will use tables from the sample **world** mysql database.
make sure you have switched to world database before running the examples.

```sql
select CountryCode , District, Population from city where name like 'Ka%';
```
The query above will force MySQL server to conduct a full table scan (start to finish) to retrieve the record we are searching.

MySQL has a special 'EXPLAIN' statement that you can use alongside select, delete, insert, replace and update statements to analyze your queries.

```sql
explain select CountryCode , District, Population from city where name like 'Ka%';
```

+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id |select\_type | table | partitions | type |possible\_keys | key  | key\_len| ref  | rows | filtered | Extra       |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | city  | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 4187 |    11.11 | Using where |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+

