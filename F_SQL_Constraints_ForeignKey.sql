create database Customer;
use Customer;
create table Customer_Info(CUSTOMER_ID int primary key, CUSTOMER_NAME varchar(50), 
                          CUSTOMER_ADDRESS varchar(max), CUSTOMER_CITY varchar(50));
insert into Customer_Info values(1,'Zakir Hossain', 'Chatmohar Natun Bazar (Kheyaghat), Chatmohar','Pabna');
insert into Customer_Info values(2,'Keya Rahman','Bahadurpur,Mothurapur','Pabna');
insert into Customer_Info values(3,'Zahid Hasan','Chatmohar Natun Bazar','Pabna');
insert into Customer_Info values(4,'Rakib Rahman','Habiganj','Sylhet');
insert into Customer_Info values(5,'Ashraful Alam Shuvo','Comilla Sadar','Comilla');



create table [Order] (ORDER_ID int, PRODUCT varchar(50),
     QUANTITY int, CUSTOMER_ID int foreign key references Customer_Info(CUSTOMER_ID) );

select * from Customer_Info;
select * from [Order];

insert into [Order] values(111,'Laptop',2,2);
insert into [Order] values(222,'Monitor',1,4);
insert into [Order] values(333,'Keyboard',1,1);
insert into [Order] values(444,'Gaming PC',1,1);
insert into [Order] values(555,'Headphone',1,2);

insert into [Order] values(666,'Mouse',1,6); --will be error because customer-id 6

delete from [Order] where ORDER_ID=666;

alter table [Order] drop constraint FK__Order__CUSTOMER___25869641; --Breakup Foreing Keye Primary Key Relation
alter table [Order] add foreign key (CUSTOMER_ID) references Customer_Info(CUSTOMER_ID);


