create database EXECUTION_ORDER;
use EXECUTION_ORDER;

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
insert into Employee_Exten values(10,'PHY');
insert into Employee_Exten values(11,'GEE');

select * from Employee_Exten;

-- FIRST --
create trigger tr_3rdTrigger
on Employee_Exten
after insert
as
begin
	print '3rd Trigger Called' ;
end

-- SECOND --
create trigger tr_2ndTrigger
on Employee_Exten
after insert
as
begin
	print '2nd Trigger Called' ;
end

-- THIRD --
create trigger tr_1stTrigger
on Employee_Exten
after insert
as
begin
	print '1st Trigger Called' ;
end


execute SP_SETTRIGGERORDER
@TRIGGERNAME='tr_1stTrigger',
@ORDER='FIRST',
@STMTTYPE='INSERT'

execute SP_SETTRIGGERORDER
@TRIGGERNAME='tr_3rdTrigger',
@ORDER='LAST',
@STMTTYPE='INSERT'
