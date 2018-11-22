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
|  3 | Data Structures  | cs205 |
+----+------------------+-------+
```

course_teacher

```
+----+-----------+------------+
| id | course_id | teacher_id |
----+-----------+------------+
|  1 |         1 |          2 |
|  2 |         2 |          1 |
+----+-----------+------------+
```

To see which course has been assigned to which teacher, a right join between course_teacher and course is needed

```sql
select c.title, ct.teacher_id
from course_teacher as ct 
right join course as c on c.id = ct.course_id;

```

output:  

```
+------------------+------------+
| title            | teacher_id |
+------------------+------------+
| Database Systems |          2 |
| Intro to Prog    |          1 |
| Data Structures  |       NULL |
+------------------+------------+
```
Note: Query returns all records from the right table and only matched records from the left table.  



