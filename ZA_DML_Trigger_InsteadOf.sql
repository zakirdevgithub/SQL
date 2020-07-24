create database DML_PART_TWO;
use DML_PART_TWO;

--DML= DATA MANIPULATION LANGUAGE
--NB: 'INSTEAD OF' 1 TA TABLE E 1 BAR E USE KORA JAY--

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
insert into Employee values(10,'PHY');

select * from Employee;

update Employee set DEPARTMENT='GEE';
delete Employee where EMP_ID=10;
delete Employee where DEPARTMENT='FEE';

create table Show(ID int primary key identity, Show_Info varchar(max));
select * from Show;

--INSTEAD OF INSERT--
create trigger tr_Insert
on Employee
with Encryption
instead of insert
as
begin
	declare @id int;
	select @id=EMP_ID from inserted;
	insert into Show values('Someone trying insert data at '+cast(getdate() as varchar(50))+' in id: '+cast(@id as varchar(50)));
end

--INSTEAD OF UPDATE--
create trigger tr_Update
on Employee
instead of update
as
begin
	declare @id int;
	select @id=EMP_ID from inserted;
	select @id=EMP_ID from deleted;
	insert into Show values('Someone tries update data at '+cast(getdate() as varchar(50))+' in id: '+cast(@id as varchar(50)));
end

execute sp_helptext tr_Update;

--INSTEAD OF DELETE--
create trigger tr_Delete
on Employee
instead of delete
as
begin
	declare @id int;
	select @id=EMP_ID from deleted;
	insert into Show values('Someone tries delete data at '+cast(getdate() as varchar(50))+' in id: '+cast(@id as varchar(50)));
end
