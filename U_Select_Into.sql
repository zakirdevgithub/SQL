create database Database_One;
create database Database_Two;

use Database_One;

create table Employee
(
EMPLOYEE_ID int primary key identity,
EMPLOYEE_NAME varchar(50),
SALARY int,
GENDER varchar(10),
DESIGNATION varchar(50),
CITY varchar(50),
OFF_ID int
);

insert into Employee values('Jahirul Islam Shovon',55000,'Male','Electrical & Electronic Engineer','Mymonshing',1);
insert into Employee values('Mohi Uddin',45000,'Female','College Teacher','Sylhet',2);
insert into Employee values('Azizul Hakim Limon',15000,'Male','Communication Engineer','Pabna',3);
insert into Employee values('Tushar Ahmed Samrat',24000,'Female','Khaddo Montri','Bogra',4);
insert into Employee values('Abu Talha Sakil',21000,'Male','Jongol Montri','Chapai',5);
insert into Employee values('Abul Hasan',76000,'Female','Electrical Enginner','Chapai',6);
insert into Employee values('Jubayeer Al Mahmud',43000,'Male','Electronic Enginner','Narshingdi',7);
insert into Employee values('Rasel Rana',23000,'Female','Electrical and Electronic Enginner','Chapai',8);
insert into Employee values('Atik',67000,'Male','Chemist','Pabna',9);

select * from Employee;


create table Employee_Exten(EMP_ID int, DEPARTMENT varchar(50));

insert into Employee_Exten values(1,'EEE');
insert into Employee_Exten values(2,'EEE');
insert into Employee_Exten values(3,'ECE');
insert into Employee_Exten values(4,'FET');
insert into Employee_Exten values(5,'FEE');
insert into Employee_Exten values(6,'EEE');
insert into Employee_Exten values(7,'EEE');
insert into Employee_Exten values(8,'EEE');
insert into Employee_Exten values(9,'CHE');

select * from Employee;
select * from Employee_Exten;
select * from Employee_Backup;
drop table Employee_Backup;

--Backup Table--
select * into Employee_Backup from Employee;

--Backup Specific Column--
select EMPLOYEE_ID,EMPLOYEE_NAME,SALARY into Employee_Backup from Employee;

--Backup Specific Rows--
select EMPLOYEE_ID,EMPLOYEE_NAME,SALARY into Employee_Backup from Employee where CITY in ('Pabna','Chapai');

--Backup Only Table Name--
select * into Employee_Backup from Employee where 1<>1;

--Backup With Inner Join--
select A.*,B.DEPARTMENT into Employee_Backup from Employee as A
inner join Employee_Exten as B
on A.OFF_ID=B.EMP_ID;

--Backup into another Database--
select * into Database_Two.dbo.Employee_Backup from Employee;

use Database_Two;
select * from Employee_Backup;