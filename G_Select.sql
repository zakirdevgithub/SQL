create database Select_Practice;
use Select_Practice;

create table Student(STD_ROLL int, STD_NAME varchar(50), STD_ADDRESS varchar(max));

insert into Student values(1,'Zakir Hossain','Kumargara Kheyaghat');
insert into Student values(2,'Keya Rahman','Bahadurpur');
insert into Student values(3,'Afhseen','Choto Bishakol');
insert into Student values(4,'Azizul Hakim','Narikel Para');
insert into Student values(5,'Tushar Ahmed','Bogra');
insert into Student values(6,'Jahirul Islam','Mymonshing');

select STD_NAME from Student;
select * from Student order by STD_NAME asc;
select * from Student order by STD_NAME desc;
select STD_NAME,STD_ADDRESS from Student;
select * from Student where STD_ROLL=2;
select * from Student where STD_ROLL=3 or STD_ROLL=5;