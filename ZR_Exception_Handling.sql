create database Exception;
use Exception;
--BASIC START--
select 10/5;

begin try
select 10/0;
end try

begin catch
	print 'Divided By Zero is not possible';
end catch
--BASIC END--
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

--SOME EXCEPTIONS--
begin try
update Employee set Emp_ID='GEE' where DEPARTMENT='CHE';
end try

begin catch
	select
	ERROR_NUMBER() as [ERROR_NUMBER],
	ERROR_SEVERITY() as [ERROR SEVERITY],  -- Mane kotota dangerous
	ERROR_STATE() as [ERROR STATE],
	ERROR_PROCEDURE() as [ERROR PROCEDURE],
	ERROR_NUMBER() as [ERROR NUMBER],
	ERROR_LINE() as [ERROR LINE],
	ERROR_MESSAGE() as [ERROR MESSAGE]
end catch

--WITH TRANSACTION--
begin try
	begin transaction
	update Employee set Emp_ID='GEE' where DEPARTMENT='CHE';
	commit transaction;
end try

begin catch
	rollback transaction;
end catch



