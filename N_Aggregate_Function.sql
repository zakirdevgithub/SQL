create database Aggregate_Functions;
use Aggregate_Functions;

create table Employee
(Employee_Id int primary key identity,
 Employee_Name varchar(50),
 Salary int,
 City varchar(50)
 );
 --ADD Column--
 alter table Employee add  Designation varchar(50);

  --Delete Column--
 alter table Employee drop column Designation;

 select * from Employee;
 
 insert into Employee values('Zakir',30700,'Sylhet');
 insert into Employee values('Keya',45060,'Pabna');
 insert into Employee values('Mitu',55005,'Dhaka');
 insert into Employee values('Setu',67888,'Rajshahi');

 select sum(Salary) as Total_Salary from Employee;
 select max(Salary) as Maximum_Salary from Employee;
 select min(Salary) as Minimum_Salary from Employee;
 select avg(Salary) as Average_Salary from Employee;
 select count(Salary) as [Total Number of Salary] from Employee;


 
