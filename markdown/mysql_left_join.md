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



