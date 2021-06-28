
teacher

```
+----+-------------+------------------------+
| id | name        | email                  |
+----+-------------+------------------------+
|  1 | Khandana    | khandana.cs.@gmail.com |
|  2 | Imran       | imran.cs.@gmail.com    |
|  3 | Abdul Basit | basit.cs@gmail.com     |
+----+-------------+------------------------+
```

course  

```
+----+------------------+-------+
| id | title            | code  |
+----+------------------+-------+
|  1 | Database Systems | cs203 |
|  2 | Intro to Prog    | cs204 |
+----+------------------+-------+
```

course_teacher

```
+----+-----------+------------+
| id | course_id | teacher_id |
+----+-----------+------------+
|  1 |         1 |          2 |
|  2 |         2 |          1 |
+----+-----------+------------+
```


SQL queries for creating required tables

```sql

create database SIS;
use SIS;

create table teacher ( id int not null primary key, name varchar(20), email varchar(20));


create table course (id int not null primary key, title varchar(20), code varchar(10));



create table course_teacher (id int not null primary key, course_id int, teacher_id int, foreign
key(course_id) references course(id), foreign key(teacher_id) references teacher(id));

```
To see who is teaching what, a left join between teacher and course_teacher

```sql
select t.name, ct.course_id 
from teacher as t 
left join course_teacher as ct on t.id=ct.teacher_id;
```

output:  

```
+-------------+-----------+
| name        | course_id |
+-------------+-----------+
| Imran       |         1 |
| Khandana    |         2 |
| Abdul Basit |      NULL |
+-------------+-----------+
```
Note: Query returns all records from the left table and only matched records from the right table.  



