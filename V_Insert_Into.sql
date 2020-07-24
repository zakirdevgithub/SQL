create database Insert_Into;
use Insert_Into;

create table Employee
(
EMPLOYEE_ID int,
EMPLOYEE_NAME varchar(50),
SALARY int,
GENDER varchar(10),
DESIGNATION varchar(50),
CITY varchar(50)
);

insert into Employee values(1,'Jahirul Islam Shovon',55000,'Male','Electrical & Electronic Engineer','Mymonshing');
insert into Employee values(2,'Mohi Uddin',45000,'Female','College Teacher','Sylhet');
insert into Employee values(3,'Azizul Hakim Limon',15000,'Male','Communication Engineer','Pabna');
insert into Employee values(4,'Tushar Ahmed Samrat',24000,'Female','Khaddo Montri','Bogra');
insert into Employee values(5,'Abu Talha Sakil',21000,'Male','Jongol Montri','Chapai');
insert into Employee values(6,'Abul Hasan',76000,'Female','Electrical Enginner','Chapai');
insert into Employee values(7,'Jubayeer Al Mahmud',43000,'Male','Electronic Enginner','Narshingdi');
insert into Employee values(8,'Rasel Rana',23000,'Female','Electrical and Electronic Enginner','Chapai');
insert into Employee values(9,'Atik',67000,'Male','Chemist','Pabna');

select * from Employee;
drop table Employee;

create table New_Employee
(
EMPLOYEE_ID int,
EMPLOYEE_NAME varchar(50),
SALARY int,
GENDER varchar(10),
DESIGNATION varchar(50),
CITY varchar(50)
);

select * from New_Employee;


insert into New_Employee values(1,'Khan Bahadur',4500,'Male','Mali','New York');
insert into New_Employee select * from Employee;

insert into New_Employee (EMPLOYEE_NAME,SALARY,CITY) select EMPLOYEE_NAME,SALARY,CITY from Employee;

