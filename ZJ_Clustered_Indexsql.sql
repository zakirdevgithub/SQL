create database INDEX_PRACTICE_TWO;
use INDEX_PRACTICE_TWO;
-- CLUSTERED INDEX CAN BE USE ONLY ONCE IN A TABLE--
create table Emplo
(
EMPLOYEE_ID int primary key identity, --PRIMARY KEY is a CLUSTERED INDEX
EMPLOYEE_NAME varchar(50),
SALARY int,
GENDER varchar(10),
DESIGNATION varchar(50),
CITY varchar(50)
);

insert into Emplo values('Jahirul Islam Shovon',55000,'Male','Electrical & Electronic Engineer','Mymonshing');
insert into Emplo values('Mohi Uddin',45000,'Female','College Teacher','Sylhet');
insert into Emplo values('Azizul Hakim Limon',15000,'Male','Communication Engineer','Pabna');
insert into Emplo values('Tushar Ahmed Samrat',24000,'Female','Khaddo Montri','Bogra');
insert into Emplo values('Abu Talha Sakil',21000,'Male','Jongol Montri','Chapai');
insert into Emplo values('Abul Hasan',76000,'Female','Electrical Enginner','Chapai');
insert into Emplo values('Jubayeer Al Mahmud',43000,'Male','Electronic Enginner','Narshingdi');
insert into Emplo values('Rasel Rana',23000,'Female','Electrical and Electronic Enginner','Chapai');
insert into Emplo values('Atik',67000,'Male','Chemist','Pabna');

select * from Emplo;

--create clustered index CIX_CLUSTERD on Emplo (EMPLOYEE_NAME ASC);	--NOT POSSIBLE because CLUSTERED  INDEX USED ALREADY AS PRIMARY KEY

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

create clustered index CIX_NAME on Employee (EMPLOYEE_NAME ASC);

select EMPLOYEE_NAME from Employee;

drop index Employee.CIX_NAME; --NOT WORK