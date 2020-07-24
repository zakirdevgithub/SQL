create database View_Practice;
use View_Practice;

--IDENTITY(100,5) mane 100 theke suru hobe 5 kore barbe.
create table Employee
(
 Employee_Id int primary key identity(100,5),
 Employee_Name varchar(50),
 Salary int,
 Designation varchar(50)
 );
 insert into Employee values('Zakir',15000,'Software Developer');
 insert into Employee values('Keya Rahman',20000,'Math Teacher');
 insert into Employee values('Mitu Rahman',12000,'Computer Engineer');
 insert into Employee values('Setu Rahman',10000,'Web Designer');

 select * from Employee;
 --One--
 create view vW_Employee1
 as
 select * from Employee;

 select * from vW_Employee1;

 --Two--
 create view vW_Employee2 as select Employee_Id, Employee_Name, Designation from Employee;

 select * from vW_Employee2;

 --Three--
 create view vW_Employee3 
 as 
 select Employee_Id, Employee_Name, Designation from Employee where Employee_Id=115;

 select * from vW_Employee3;

 --Four--
 create table Employee_Extension
 (
  Gender varchar (6), 
  Age int, 
  Employee_Id int primary key identity(100,5)
  );

insert into Employee_Extension values('Male',25);
insert into Employee_Extension values('Female',24);
insert into Employee_Extension values('Female',21);
insert into Employee_Extension values('Female',12);

select * from Employee_Extension;

select A.*, B.Gender, B.Age from Employee as A 
inner join Employee_Extension as B 
on A.Employee_Id = B.Employee_Id;


--View with Join--
create view vW_Employee_Ex
as
select A.*, B.Gender, B.Age from Employee as A 
inner join Employee_Extension as B 
on A.Employee_Id = B.Employee_Id;

select * from vW_Employee_Ex;