- First create teacher table

```sql
create table teacher
(
  id number(6),
	firstName varchar(20),
	constraint pk_column_t primary key(id)
);
```

- Now insert values into teacher table

```sql
insert into teacher
values(1, 'imran');

insert into teacher
values(2, 'Junaid');

insert into teacher
values(3, 'Basit');
```

- create course table

```sql
create table course
(
  id number(6),
	title varchar(20),
	constraint pk_column_c primary key(id)
);
```

- Now insert values into course table

```sql
insert into course
values(1, 'Operating Systems');

insert into course
values(2, 'Database Systems');

insert into course
values(3, 'Fundamentals of Programming');
```

- Create Course_Teacher table to store relationship

```sql
create table course_teacher
(
 tid number(6),
 cid number(6),
 constraint fk_teacher
 foreign key(tid)
 references teacher(id),
 constraint fk_course
 foreign key(cid)
 references course(id)
);
```

- insert values in course_teacher

```sql
insert into course_teacher
values(2,1);

insert into course_teacher
values(2,2);

insert into course_teacher
values(2,3);
```


- Finally write inner join query

```sql
select course.title
from course
inner join course_teacher
on course.id = course_teacher.cid;
```
