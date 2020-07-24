create database Alter_Constraints;
use Alter_Constraints;

create table Customer
(CUSTOMER_ID int, 
 CUSTOMER_NAME varchar(50),
 AGE int,
 [ADDRESS] varchar(max),
 CITY varchar(50)
 );
 --Make Not Null
 alter table Customer alter column CUSTOMER_NAME varchar(50) not null;

 --Not Null to Null
  alter table Customer alter column CUSTOMER_NAME varchar(50) null;

 --Make Unique
 alter table Customer add unique(CUSTOMER_ID);

 --Remove Unique
 alter table Customer drop constraint [UQ__Customer__1CE12D36C8B82B44];

 --Make Primary Key
 alter table Customer alter column CUSTOMER_ID int not null;
 alter table Customer add primary key(CUSTOMER_ID);

 --Remove Primary Key
 alter table Customer drop constraint [PK__Customer__1CE12D374ACB6852];

 --Make Foreign Key
 create table Product
 (
	PRODUCT_ID int,
	PRODUCT_NAME varchar(50),
	QUANTITY int,
	CUSTOMER_ID int
 );

 alter table Customer add primary key(CUSTOMER_ID);
 alter table Product add foreign key(CUSTOMER_ID) 
 references Customer(CUSTOMER_ID);

 --Remove Foreign Key
 alter table Product drop constraint [FK__Product__CUSTOME__276EDEB3];

 --Make Check
 alter table Customer add check(AGE>=18);
 --insert into Customer values(1,'Zakir',17,'Chatmohar','Pabna'); Error
 insert into Customer values(1,'Zakir',18,'Chatmohar','Pabna'); --OK

 --Remove Check
 alter table Customer drop constraint [CK__Customer__AGE__286302EC];
 insert into Customer values(2,'Jewel',17,'Chatmohar','Pabna');

 --Make Default Key
 alter table Product add default 1 for QUANTITY;
 insert into Product (PRODUCT_ID,PRODUCT_NAME) values(666,'Mouse');
 select * from Product;

 --Remove Default Key
 alter table Product drop constraint [DF__Product__QUANTIT__29572725];