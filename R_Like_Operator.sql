create database Like_Operator;
use Like_Operator;

create table Employee
(
EMPLOYEE_ID int primary key identity,
EMPLOYEE_NAME varchar(50),
SALARY int,
DESIGNATION varchar(50)
);

insert into Employee values('Jahirul Islam Shovon',55000,'Electrical & Electronic Engineer');
insert into Employee values('Mohi Uddin',45000,'College Teacher');
insert into Employee values('Azizul Hakim Limon',15000,'Communication Engineer');
insert into Employee values('Tushar Ahmed Samrat',24000,'Khaddo Montri');
insert into Employee values('Abu Talha Sakil',21000,'Jongol Montri');
insert into Employee values('Abul Hasan',76000,'Electrical Enginner');
insert into Employee values('Jubayeer Al Mahmud',43000,'Electronic Enginner');
insert into Employee values('Rasel Rana',23000,'Electrical and Electronic Enginner');
insert into Employee values('Atik',67000,'Chemist');

select * from Employee;

-- a diye suru but porer gula jana na thakle--
select * from Employee where EMPLOYEE_NAME like 'a%'; 

-- sese n diye ses but ager gula jana na thakle--
select * from Employee where EMPLOYEE_NAME like '%n';

-- 4 letter e nam, prothome a diye suru but porer gula jana na thakle--
select * from Employee where EMPLOYEE_NAME like 'a___';

--a or j or m diye suru--
select * from Employee where EMPLOYEE_NAME like '[a,j,m]%';

-- a or t or l diye ses--
select * from Employee where EMPLOYEE_NAME like '%[a,t,l]';