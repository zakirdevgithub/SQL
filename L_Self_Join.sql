create table Mess(PERSON_ID int, PERSON_NAME varchar(50), MANAGER_ID int);

insert into Mess values(1,'Zakir',4);
insert into Mess values(2,'Rakib',4);
insert into Mess values(3,'Shuvo',5);
insert into Mess values(4,'Sagor',1);
insert into Mess values(5,'Foyez',1);
insert into Mess values(6,'Tanvir',3);

select * from Mess;

select A.PERSON_NAME as MESS_MEMBERS, B.PERSON_NAME as MANAGER 
from Mess as A inner join Mess as B on A.MANAGER_ID = B.PERSON_ID ;
