create database Join_Three;
use Join_Three;

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

select * from Employee_Exten;

create table Employee_Update(COUNTRY varchar(50),ROAD_NO int);

insert into Employee_Update values('America',1);
insert into Employee_Update values('Australia',2);
insert into Employee_Update values('Bangladesh',3);
insert into Employee_Update values('Brazil',4);
insert into Employee_Update values('Canada',5);
insert into Employee_Update values('Dubai',6);
insert into Employee_Update values('Egypt',7);
insert into Employee_Update values('Germany',8);
insert into Employee_Update values('India',9);

select * from Employee_Update;

--Join Three Table--
select * from Employee as A
inner join Employee_Exten as B
on A.EMPLOYEE_ID= B.EMP_ID
inner join Employee_Update as C
on B.EMP_ID= C.ROAD_NO;

select A.EMPLOYEE_ID, A.EMPLOYEE_NAME, A.SALARY,
A.GENDER, A.DESIGNATION, A.CITY, B.DEPARTMENT, C.COUNTRY from Employee as A
inner join Employee_Exten as B
on A.EMPLOYEE_ID= B.EMP_ID
inner join Employee_Update as C
on B.EMP_ID= C.ROAD_NO;

