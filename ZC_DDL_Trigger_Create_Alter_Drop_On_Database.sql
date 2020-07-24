 create database DDL_PART_ON_DATABASE;
 use DDL_PART_ON_DATABASE;

 -- DDL = DATA DEFINITION LANGUAGE --
 --CREATE,ALTER,DROP--

-- CREATE--
create trigger tr_Create_Something
on database
for CREATE_TABLE
as
begin
	print 'TABLE HAS BEEN CREATED';
end

create table Test(id int);
select * from Test;

--ALTER--
create trigger tr_Alter_Something
on database
with encryption
for ALTER_TABLE
as
begin
	print 'Someone change your Table';
end

alter table Test add Name varchar(50);
alter table Test add Age int;
select * from Test;

--DROP--
create trigger tr_Drop_Something
on database
for DROP_TABLE
as
begin
	print 'SOMEONE DROP YOUR TABLE!';
end	

drop table Test;

--DDL with VIEW--
create trigger tr_Create_View
on database
for CREATE_VIEW
as
begin
	print 'SOMEONE CREATE VIEW';
end

create table Test(id int);

create view vW_Test_View
as
select * from Test;

-- ROLLBACK--
drop trigger tr_Create_Something on database;
drop trigger tr_Alter_Something on database;
drop trigger tr_Drop_Something on database;
drop table Test;

-- CREATE With ROLLBACK--
create trigger tr_Create_Something
on database
for CREATE_TABLE
as
begin
	ROLLBACK
	print 'YOU ARE NOT ALLOWED TO CREATE A TABLE';
end

create table Test(id int); --NOT POSSIBLE
select * from Test; --NOTHING WILL SHOW

--ALTER with ROLLBACK--
alter trigger tr_Alter_Something --Here i use alter to change trigger
on database
for ALTER_TABLE
as
begin
	ROLLBACK
	print 'YOU CAN NOT CHANGE TABLE';
end

disable trigger tr_Create_Something on database;

create table Test(id int);
select * from Test;

alter table Test add [Name] varchar(50);
alter table Test add AGE int;

--DROP with ROLLBACK--
create trigger tr_Drop_Something
on database
for DROP_TABLE
as
begin
	ROLLBACK
	print 'YOU ARE NOT ALLOWED TO DROP TABLE!';
end

drop table Test;





