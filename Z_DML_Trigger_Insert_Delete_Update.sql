create database DML_PART_ONE;
use DML_PART_ONE;

-- DML=DATA MANIPULATION LANGUAGE

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
insert into Employee values(11,'GEE');
insert into Employee values(12,'PET');
insert into Employee values(13,'PTE');

select * from Employee;


create table Message_Show(ID int primary key identity,Info varchar(max));
select * from Message_Show;

--INSERT TRIGGER--
create trigger tr_InsertedSomething
on Employee
after insert
as
begin
select * from inserted
end


--DELETE TRIGGER--
create trigger tr_DeletedSomething
on Employee
after delete
as
begin
	select * from deleted
end

delete from Employee where EMP_ID=11;
delete from Employee where DEPARTMENT='PHY';

--UPDATE TRIGGER--
create trigger tr_UpdatedSomething 
on Employee
after update
as
begin
	select * from inserted
	select * from deleted
end

update  Employee set DEPARTMENT='GEE' where EMP_ID=10;

--Trigger with Insert Message--
create trigger tr_InsertMessage
on Employee
after insert
as
begin
	declare @id int
	select @id=EMP_ID from inserted;
	insert into Message_Show values('Employee with id '+Cast(@id as varchar(50))+' Added at '+Cast(GETDATE() as varchar(50)));
end

--Trigger with Delete Message--
create trigger tr_DeletedMessage
on Employee
after delete
as
begin
	declare @id int
	select @id=EMP_ID from deleted;
	insert into Message_Show values('Existing Employee with id '+Cast(@id as varchar(50))+' Deleted at '+Cast(GETDATE() as varchar(50)));
end

delete from Employee where EMP_ID=12;