create database MATH;
use MATH;

create table SET_A(ID int primary key identity, [NAME] varchar(50), EMAIL varchar(50));
insert into SET_A values('Zakir','zakir123@gmail.com');
insert into SET_A values('Keya','keya123@gmail.com');
insert into SET_A values('Mitu','mitu123@gmail.com');
insert into SET_A values('Setu','setu123@gmail.com');

select * from SET_A;


create table SET_B(ID int primary key identity, [NAME] varchar(50), EMAIL varchar(50));
insert into SET_B values('Zahid','zahid123@gmail.com');
insert into SET_B values('Afsheen','afsheen123@gmail.com');
insert into SET_B values('Rafi','rafi123@gmail.com');
insert into SET_B values('Setu','setu123@gmail.com');

select * from SET_B;

--UNION--
select * from SET_A union select * from SET_B;

--UNION ALL--
select * from SET_A union all select * from SET_B;

--INTERSECT--
select * from SET_A intersect select * from SET_B;

--EXCEPT/MINUS--
select * from SET_A except select * from SET_B;

select * from SET_B except select * from SET_A;

