create database Computed;
use Computed;

create table Employee
(ID int , 
 EMP_NAME varchar(50), 
 BASIC_SALARY int,
 HOUSE_RENT int,
 MEDICAL_FEE int,
 TOTAL_SALARY AS BASIC_SALARY+HOUSE_RENT+MEDICAL_FEE --non persisted
 --TOTAL_SALARY AS BASIC_SALARY+HOUSE_RENT+MEDICAL_FEE persisted
 );
 insert into Employee values(1,'Zakir',35000,10000,6000);
 insert into Employee values(2,'Keya',50000,15000,8000);
 insert into Employee values(3,'Zahid',40000,12000,7000);

 select * from Employee;
 
 alter table Employee add SOMETHING as 6000-1000; --Persisted


 drop table Employee;

 create clustered index NIX_TOTAL_SALARY on Employee (TOTAL_SALARY ASC);

