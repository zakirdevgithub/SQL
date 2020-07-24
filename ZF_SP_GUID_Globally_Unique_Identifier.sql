create database GUID_PRACTICE;
use GUID_PRACTICE;

create table Employee(EMP_ID uniqueidentifier primary key default newid(), DEPARTMENT varchar(50));

insert into Employee values(default,'EEE');
insert into Employee values(default,'EEE');
insert into Employee values(default,'ECE');
insert into Employee values(default,'FET');
insert into Employee values(default,'FEE');
insert into Employee values(default,'EEE');
insert into Employee values(default,'EEE');
insert into Employee values(default,'EEE');
insert into Employee values(default,'CHE');

select * from Employee;


