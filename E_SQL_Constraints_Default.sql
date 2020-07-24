create table Students_Details(STD_ID int primary key, STD_NAME varchar(50), STD_AGE int default(18));

insert into Students_Details (STD_ID,STD_NAME) values(1,'Zakir Hossain');
select * from Students_Details;