select ascii('A');
select ascii('B');
select ascii('Z');

select ascii('a');
select ascii('z');

select char(65);
select char(48);

declare @start int;
set @start=65;
while (@start <=90)
begin
	print char(@start);
	set @start= @start+1;
end

declare @number int;
set @number=0;
while(@number <= 255)
begin
	print char(@number);
	set @number=@number+1;
end

select len('MD. ZAKIR HOSSAIN');
select upper('bangladesh');
select lower('COVID-19');
select reverse('corona');

create table Person(id int, [Name] varchar(50),Age int);

insert into Person values(1,'Zakir',25);
insert into Person values(2,'   Zahid',35);
insert into Person values(3,'jewel    ',45);
insert into Person values(4,'        keya            ',76);

select * from Person;

select id,[Name],Age from Person;
select id,ltrim([Name]),Age from Person;
select id,rtrim([Name]),Age from Person;
select id,rtrim(ltrim([Name])),Age from Person;
select id,trim([Name]),Age from Person;






