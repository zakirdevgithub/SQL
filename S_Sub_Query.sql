create database Sub_Query;
use Sub_Query;

create table Employee
(
EMPLOYEE_ID int primary key identity,
EMPLOYEE_NAME varchar(50),
SALARY int,
GENDER varchar(10),
DESIGNATION varchar(50),
CITY varchar(50)
);

insert into Employee values('Jahirul Islam Shovon',55000,'Male','Electrical & Electronic Engineer','Mymonshing');
insert into Employee values('Mohi Uddin',45000,'Female','College Teacher','Sylhet');
insert into Employee values('Azizul Hakim Limon',15000,'Male','Communication Engineer','Pabna');
insert into Employee values('Tushar Ahmed Samrat',24000,'Female','Khaddo Montri','Bogra');
insert into Employee values('Abu Talha Sakil',21000,'Male','Jongol Montri','Chapai');
insert into Employee values('Abul Hasan',76000,'Female','Electrical Enginner','Chapai');
insert into Employee values('Jubayeer Al Mahmud',43000,'Male','Electronic Enginner','Narshingdi');
insert into Employee values('Rasel Rana',23000,'Female','Electrical and Electronic Enginner','Chapai');
insert into Employee values('Atik',67000,'Male','Chemist','Pabna');

select * from Employee;



select * from Employee 
where EMPLOYEE_NAME in
(select EMPLOYEE_NAME from Employee where CITY='Pabna' or CITY='Chapai');

select * from Employee
where EMPLOYEE_NAME in 
(select EMPLOYEE_NAME from Employee where GENDER='Male');

select * from Employee
where EMPLOYEE_NAME in
(select EMPLOYEE_NAME from Employee where Salary >30000);

--UPDATE--
update  Employee set SALARY=SALARY+3000
where EMPLOYEE_NAME in
(select EMPLOYEE_NAME from Employee where CITY='Pabna' );

--Delete--
delete from Employee 
where EMPLOYEE_ID in
(select EMPLOYEE_ID from Employee where SALARY=70000);

--Scalar Sub Query [ >,<,=,<=,>=,!= ]  Use for Single value or Single Row--
select * from Employee
where EMPLOYEE_NAME =
(select EMPLOYEE_NAME from Employee where EMPLOYEE_NAME='Atik');

--select * from Employee
--where SALARY <=
--(select SALARY from Employee where SALARY <=60000); NOT POSSIBLE because it will return multiple value

--Multivalue Sub Query--
select * from Employee
where SALARY > all
(select SALARY from Employee where SALARY <60000 or SALARY<70000);

select * from Employee
where SALARY < any
(select SALARY from Employee where GENDER='Male' or GENDER='Female');

select * from Employee
where EMPLOYEE_NAME in
(select EMPLOYEE_NAME from Employee where Salary >30000);

--CO-RELATED Sub Query--
select * from Employee as A
where A.SALARY in
(select B.Salary from Employee as B where A.SALARY>50000 );

--Sub Query with Aggregate Function--
select * from Employee
where SALARY in
(select max(SALARY) from Employee);