create database Having_Clause;
use Having_Clause;


create table Employee
(
	Employee_Id int primary key identity,
	Employee_Name varchar(50),
	Gender varchar(20),
	Salary int,
	City varchar(50)
);

insert into Employee values('Zakir','Male',35000,'Sylhet');
insert into Employee values('Zahid','Male',40000,'Pabna');
insert into Employee values('Limon','Male',20000,'Pabna');
insert into Employee values('Mitu','Female',55550,'Dhaka');
insert into Employee values('Rakib','Male',34500,'Sylhet');
insert into Employee values('Mansura','Female',67000,'Sylhet');
insert into Employee values('Fahmida','Female',54000,'Dhaka');

select * from Employee;

--Using Group By and Having--
select City,sum(Salary) as [Total Salary] from Employee group by City Having City='Pabna';
select City,sum(Salary) as [Total Salary] from Employee group by City Having City='Dhaka';
select City,sum(Salary) as [Total Salary] from Employee group by City Having sum(Salary)> 50000;
select City,sum(Salary) as [Total Salary] from Employee group by City Having sum(Salary)> 60000;

--Using Group By and Where,Having--
select City,sum(Salary) as [Total Salary] from Employee where City in ('Dhaka','Sylhet') group by City Having sum(Salary)> 50000;
select City,sum(Salary) as [Total Salary] from Employee where City in ('Dhaka') group by City Having sum(Salary)> 50000;



--Using Group By and Where--
select City,sum(Salary) as [Total Salary] from Employee where City='Pabna' group by City;
select City,sum(Salary) as [Total Salary] from Employee where City='Dhaka' group by City;