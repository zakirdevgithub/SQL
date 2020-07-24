create database Inner_Join;
use Inner_Join;

create table Product
(PRODUCT_ID int unique not null, 
 PRODUCT_NAME varchar(50) not null,
 MODEL varchar(50),
 PRICE int not null);

insert into Product values(11,'Laptop','PROBOOK-G3-4400',53000);
insert into Product values(12,'LG','G6',54000);
insert into Product values(13,'SAMSUNG','J2',12000);
insert into Product values(14,'WALTON','L6i',700);
insert into Product values(15,'ONE-PLUS','3T',47000);

select * from Product;

create table Specifications
(RAM varchar(20),
 ROM varchar(20),
 MADE_IN varchar(max), 
 PRODUCT_ID int unique not null);

 insert into Specifications values('8GB','1TB','China',11);
 insert into Specifications values('4GB','64GB','KOREA',12);
 insert into Specifications values('128KB','512KB','BANGLADESH',14);
 insert into Specifications values('1GB','8GB','JAPAN',13);
 insert into Specifications values('2GB','32GB','FINLAND',17);

 select * from Product;
 select * from Specifications order by PRODUCT_ID asc;

 --INNER JOIN--
 select * from Product as A inner join Specifications as B on A.PRODUCT_ID = B.PRODUCT_ID;
 
 select A.PRODUCT_ID, A.PRODUCT_NAME, A.MODEL, A.PRICE, B.RAM, B.ROM, B.MADE_IN 
 from Product as A inner join Specifications as B on A.PRODUCT_ID = B.PRODUCT_ID;

 --LEFT JOIN--
 select * from Product as A left join Specifications as B on A.PRODUCT_ID = B.PRODUCT_ID;

 select A.PRODUCT_ID, A.PRODUCT_NAME, A.MODEL, A.PRICE, B.RAM, B.ROM, B.MADE_IN 
 from Product as A left join Specifications as B on A.PRODUCT_ID = B.PRODUCT_ID;

 --RIGHT JOIN--
 select * from Product as A right join Specifications as B on A.PRODUCT_ID = B.PRODUCT_ID;

 select A.PRODUCT_ID, A.PRODUCT_NAME, A.MODEL, A.PRICE, B.RAM, B.ROM, B.MADE_IN 
 from Product as A right join Specifications as B on A.PRODUCT_ID = B.PRODUCT_ID;

 --FULL OUTER--
 select * from Product as A full outer join Specifications as B on A.PRODUCT_ID = B.PRODUCT_ID;

 select A.PRODUCT_ID, A.PRODUCT_NAME, A.MODEL, A.PRICE, B.RAM, B.ROM, B.MADE_IN 
 from Product as A full outer join Specifications as B on A.PRODUCT_ID = B.PRODUCT_ID;