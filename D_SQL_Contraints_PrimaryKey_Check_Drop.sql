create database Employees;
use Employees;

--primary key= unique + not null
create table Employee_Info(EmpId int primary key, EmpName varchar(50), EmpAge int check(EmpAge >=18));

select * from Employee_Info;

insert into Employee_Info values(1,'Zakir Hossain',25);
insert into Employee_Info values(2,'Keya Rahman',24);
--insert into Employee_Info (EmpName,EmpAge) values('Mitu Rahman',21); not possible because EmpId is PRIMARY KEY(unique+not null)
insert into Employee_Info values(3,'Zahid Hasan',18);
--insert into Employee_Info values(4,'Setu Rahman',12); not possible because EmpAge CHECK age >=18
insert into Employee_Info values(4,'Rakib Rahman',18);
update Employee_Info set EmpAge=23 where EmpName='Rakib Rahman';

insert into Employee_Info values(5,'Gamer Boy',35);
update Employee_Info set EmpName='Ashraful Alam Shuvo', EmpAge=23 where EmpId=5;

drop table Employee_Info;