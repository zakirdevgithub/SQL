create database DML_PART_THREE;
use DML_PART_THREE;
-- DML= DATA MANIPULATION LANGUAGE--

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

create view vW_Employee
as
select A.*, B.COUNTRY from Employee_Exten as A
inner join  Employee_Update as B
on A.EMP_ID= B.ROAD_NO;

select * from vW_Employee;

delete vW_Employee where EMP_ID=9;

-- Let Delete with Instead Of--
create trigger tr_DeleteSomething
on vW_Employee
instead of delete
as
begin
	delete Employee_Exten where EMP_ID=9;
	delete Employee_Update where ROAD_NO=9;
end