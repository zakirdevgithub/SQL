create database Merge_Practice;
use Merge_Practice;

create table Employee_Old(ID int, EMP_NAME varchar(50));

insert into Employee_Old values(1,'Limon');
insert into Employee_Old values(3,'Dola');
insert into Employee_Old values(4,'Shamim');
insert into Employee_Old values(5,'Alamin');
insert into Employee_Old values(6,'Maya');
insert into Employee_Old values(7,'Kuttus');

create table Employee_New (ID int, EMP_NAME varchar(50));
insert into Employee_New values(1,'Zakir');
insert into Employee_New values(2,'Keya');
insert into Employee_New values(3,'Rubaiya');
insert into Employee_New values(4,'Afsheen');
insert into Employee_New values(5,'Rafi');

select * from Employee_Old;
select * from Employee_New;


merge Employee_Old as Target_Table
using Employee_New as Source_Table
on Target_Table.ID = Source_Table.ID
when matched then
update set Target_Table.EMP_NAME = Source_Table.EMP_NAME
when not matched by target then
insert (ID,EMP_NAME) values(Source_Table.ID, Source_Table.EMP_NAME)
when not matched by source then
delete;

--Without Delete
merge Employee_Old as T
using Employee_New as S
on T.ID=S.ID
when matched then
update set T.EMP_NAME=S.EMP_NAME
when not matched by target then
insert (ID,EMP_NAME) values(S.ID,S.EMP_NAME);

