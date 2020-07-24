create database Transaction_ACID;
use Transaction_ACID;

--TCL= TRANSFER CONTROL LANGUAGE

--A = ATOMICITY
--*If the transaction has many operations then 
--all should be committed. It means ALL or NONE.
--It manages by Transaction Manager. Example of 
--2 Accounts.

--C = CONSISTENCY
--*The sequence of operations must be consistent.
--	A=3000, B=4000 A+B=7000 -Before Transaction
--	A=3000-1000=2000
--	B=4000+1000=5000
--	A+B=2000+5000=7000 --After Transaction

--I = ISOLATION
--*The operations that are performed must be isolated
--from the other operations on the same server or on 
--the same database. It means each transaction must be 
--executes without knowing what is happening to other
--transactions.

--D = DURABILITY
--*The operations that are performed on the database 
--must be saved and stored in the database permanently.



create table Employee(EMP_ID int, DEPARTMENT varchar(50));

insert into Employee values(1,'EEE');
insert into Employee values(2,'EEE');
insert into Employee values(3,'ECE');
insert into Employee values(4,'FET');
insert into Employee values(5,'FEE');
insert into Employee values(6,'EEE');
insert into Employee values(7,'EEE');
insert into Employee values(8,'EEE');
insert into Employee values(9,'CHE');

select * from Employee;


begin transaction
update Employee set DEPARTMENT='PHY' where EMP_ID=9;
insert into Employee values(10,'GEE');
rollback transaction; --UNDO
commit transaction; --Permamently Data Save



