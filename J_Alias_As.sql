create database Alias_AS;
use Alias_As;
create table Students
(
	STDID int,
	STD_NAME varchar(50),
	STD_AGE int
);

insert into Students values(100,'Zakir Hossain',25);
insert into Students values(101,'Keya Rahman',24);
insert into Students values(102,'Jewel Hossain',7);

select * from Students;
select STDID as STUDENT_ID from Students;
select STDID as STUDENT_ID, STD_NAME as STUDENT_NAME, STD_AGE as STUDENT_AGE from Students;