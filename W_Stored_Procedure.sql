create database Stored_Procedure;
use Stored_Procedure;

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

--Simple Example--
create procedure sp_ShowById
as
begin
select * from Employee where EMP_ID=4;
end

execute sp_ShowById;

--With One Argument--
create procedure sp_ShowByIdwithArgument
@id int
as
begin
select * from Employee where EMP_ID= @id;
end

execute sp_ShowByIdwithArgument 5;

--With Two Argument--
create procedure sp_TwoArgument
@id int,
@name varchar(50)
as
begin
select * from Employee where EMP_ID= @id and DEPARTMENT= @name;
end

execute sp_TwoArgument 3,'ECE';

--Changing Exist Procedure--
alter procedure sp_TwoArgument
@id int
as
begin
select * from Employee where EMP_ID= @id;
end

execute sp_TwoArgument 4;
execute sp_helptext sp_TwoArgument;

--Encrypt Stored Procedure--
create procedure sp_EncryptionProcedure
@id int,
@name varchar(50)
with encryption
as
begin
select * from Employee where EMP_ID= @id and DEPARTMENT= @name;
end

execute sp_EncryptionProcedure 3,'ECE';

execute sp_helptext sp_EncryptionProcedure;

--Remove Encryption--
alter procedure sp_EncryptionProcedure
@id int,
@name varchar(50)
as
begin
select * from Employee where EMP_ID= @id and DEPARTMENT= @name;
end

execute sp_EncryptionProcedure 3,'ECE';

execute sp_helptext sp_EncryptionProcedure;

-- Drop Procedure--
drop procedure sp_EncryptionProcedure;