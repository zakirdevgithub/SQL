create database Stored_Procedure_With_Output;
use Stored_Procedure_With_Output;



create table Employee_Exten(EMP_ID int, DEPARTMENT varchar(50));

insert into Employee_Exten values(1,'EEE');
insert into Employee_Exten values(2,'EEE');
insert into Employee_Exten values(3,'ECE');
insert into Employee_Exten values(4,'FET');
insert into Employee_Exten values(5,'FEE');
insert into Employee_Exten values(6,'EEE');
insert into Employee_Exten values(7,'EEE');
insert into Employee_Exten values(8,'EEE');
insert into Employee_Exten values(9,'CHE');

select * from Employee_Exten;

create procedure Output_Procedure
@department varchar(50),
@CountEmployee int output
as
begin
select @CountEmployee=count(EMP_ID) from Employee_Exten;
end

declare @TotalEmployee int
execute Output_Procedure 'EEE',@TotalEmployee output
select @TotalEmployee as [Total Employee];