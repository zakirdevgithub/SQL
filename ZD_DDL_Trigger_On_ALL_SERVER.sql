create database DDL_ON_SERVER;
use DDL_ON_SERVER;

--CREATE--
create trigger tr_Create_Something
on all server
for CREATE_TABLE
as
begin
	ROLLBACK
	print 'YOU ARE NOT ALLOWED TO CREATE TABLE ON THIS SERVER';
end

create table STUDENT(id int); --NOT POSSIBLE
disable trigger tr_Create_Something on all server;


--ALTER--
create trigger tr_Alter_Something
on all server
for ALTER_TABLE
as
begin
	ROLLBACK
	print 'YOU ARE NOT ALLOWED TO CHANGE TABLE ON THIS SERVER';
end

create table STUDENT(id int); 
alter table STUDENT add [Name] varchar(50);
disable trigger tr_Alter_Something on all server;

-- DROP --
create trigger tr_Drop_Something
on ALL SERVER
for DROP_TABLE
as
begin
	ROLLBACK
	print 'YOU ARE NOT ALLOWED TO DROP TABLE!';
end

drop table STUDENT;

disable trigger tr_Drop_Something on all server;
