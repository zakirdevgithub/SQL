create database Unique_Index;
use Unique_Index;

create table Student(STD_ID INT, STD_NAME VARCHAR(50));

insert into Student values(1,'Zakir');
insert into Student values(2,'Keya');
insert into Student values(2,'Jewel');
insert into Student values(3,'Zakir');
insert into Student values(1,'Keya');
insert into Student values(4,'Jewel');


select * from Student;
create unique nonclustered index CIX_STUDENT_ID on Student(STD_ID ASC); --Not Possible because STD_ID is not Unique

select STD_ID from Student;

drop index Student.CIX_STUDENT_ID;
