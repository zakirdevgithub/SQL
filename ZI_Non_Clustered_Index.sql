create database Index_Practice;
use Index_Practice;

-- NON CLUSTERED INDEX 1 ER ODHIK THAKTE PARE --
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

create nonclustered index NIX_EMPLOYEE on Employee (SALARY ASC);

select Salary from Employee;
select EMPLOYEE_NAME from Employee;

create nonclustered index NIX_EMPLOYEE_NAME on Employee(EMPLOYEE_NAME DESC);

drop index Employee.NIX_EMPLOYEE_NAME;