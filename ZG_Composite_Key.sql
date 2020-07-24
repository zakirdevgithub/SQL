create database Composite;
use Composite;

create table Test_Table 
(EMP_ID int , 
 [NAME] varchar(50),
 AGE int, PERSON_ID int , 
 primary key(EMP_ID,PERSON_ID) --Composite Key
 );
select * from Test_Table;