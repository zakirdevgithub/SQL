create database Employee;
use Employee;

create table Employee_Info(EmpId int unique not null, EmpName varchar(50) not null, EmpAge int);

select * from Employee_Info;

insert into Employee_Info values(100,'Zakir',25);
--insert into Employee_Info values(100,'Abul',25); not possible because EmpId is unique
insert into Employee_Info values(101,'Keya',24);
insert into Employee_Info values(102,'Mitu',21);
--insert into Employee_Info values(103,'Setu'); not possible because Age should be NOT NULL
