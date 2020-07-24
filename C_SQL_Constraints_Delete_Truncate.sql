create database Relatives;
use Relatives;

create table Relatives_Info(Relatives_Name varchar(50),Relatives_Age int, Relatives_Designation varchar(100));

select * from Relatives_Info;

insert into Relatives_Info values('Zakir Hossain',25,'Software Developer');
insert into Relatives_Info values('Mahmuda Rahman Keya',24,'Creative Designer');
insert into Relatives_Info values('Sumaiya Rahman Mitu',21,'Jhograte');
insert into Relatives_Info values('Sanjida Rahman Setu',12,'Class 8 Student');
insert into Relatives_Info values('Zahid Hasan',25,'Textile Engineer');
insert into Relatives_Info values('Jahangir Alam',30,'Electrical Engineer');

delete from Relatives_Info where Relatives_Name='Sumaiya Rahman Mitu';
truncate table Relatives_Info;