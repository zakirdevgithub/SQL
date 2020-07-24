create database Group_By;
use Group_By;

create table Employee
(
	Employee_Id int primary key identity,
	Employee_Name varchar(50),
	Gender varchar(20),
	Salary int,
	City varchar(50)
);

select * from Employee;

insert into Employee values('Zakir','Male',35000,'Sylhet');
insert into Employee values('Zahid','Male',40000,'Pabna');
insert into Employee values('Limon','Male',20000,'Pabna');
insert into Employee values('Mitu','Female',55550,'Dhaka');
insert into Employee values('Rakib','Male',34500,'Sylhet');
insert into Employee values('Mansura','Female',67000,'Sylhet');
insert into Employee values('Fahmida','Female',54000,'Dhaka');

select City,sum(Salary) as [Total Salary] from Employee group by City;
select Gender,sum(Salary) as [Total Salary] from Employee group by Gender;

select Employee_Name from Employee order by Employee_Name asc;
select Employee_Name from Employee order by Employee_Name desc;
