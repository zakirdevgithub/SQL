create database My_Varsity;
use My_Varsity;

create table Friends (ROLL_NO int, FRIEND_NAME varchar(50), FRIEND_AGE int, 
						DEPARTMENT varchar(max), HOMETOWN varchar(50));
select * from Best_Friends;

alter table Friends drop column FRIEND_AGE; --Delete A Column

insert into Friends values(100,'Jahirul Islam Shovon','EEE','Mymonshing');
insert into Friends values(101,'Tushar Ahmed Samrat','FET','Bogra');
insert into Friends values(102,'Azizul Hakim Limon','ECE','Pabna');


alter database My_Varsity modify name=My_Friends_List; --Change Database name
execute sp_renamedb 'My_Friends_List','My_Friends'; --Change Database Name
execute sp_rename 'Friends','Best_Friends'; --Change Table Name

alter table Best_Friends add  UNIVERSITY varchar(50); --Add a Column
alter table Best_Friends alter column DEPARTMENT nvarchar(30); --Change DataType
 


