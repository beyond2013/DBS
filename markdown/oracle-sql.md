```sql
create table teacher
(
  id number(6),
	firstName varchar(20),
	constraint pk_column primary key(id)
);

insert into teacher
values(1, 'imran');

insert into teacher
values(2, 'Junaid');

insert into teacher
values(3, 'Basit');


create table course
(
  id number(6),
	title varchar(20),
	constraint pk_column primary key(id)
);

insert into course
values(1, 'Operating Systems');

insert into course
values(2, 'Database Systems');

insert into course
values(3, 'Fundamentals of Programming');

create table teacher_course
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


insert into course_teacher
values(2,1);

insert into course_teacher
values(2,2);

insert into course_teacher
values(2,3);


select course.title
from course
inner join course_teacher
on course.id = course_teacher.cid;
```
