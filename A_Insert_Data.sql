create database Student;
use Student;

create table Student_Biodata(STUDENT_ID bigint, STUDENT_NAME varchar(50), 
                      AGE int, FATHER_NAME varchar(50), CLASS varchar(50));
select * from Student_Biodata;

insert into Student_Biodata values(201333801,'Abdullah',10,'Akram Khan','2nd');
insert into Student_Biodata values(201333802,'Bodor ullah',11,'Babul Khan','3rd');
insert into Student_Biodata values(201333803,'Chand ullah',12,'Cader Khan','4th');
insert into Student_Biodata values(201333804,'Din Mohammad',13,'Dalim Khan','5th');
insert into Student_Biodata values(201333805,'Emon Ali',14,'Ebad Khan','6th');

select * from Student_Biodata;

insert into Student_Biodata(STUDENT_NAME,CLASS) values('Ashik','4th');
insert into Student_Biodata(STUDENT_NAME,CLASS,AGE) values('Ababil','5th',14);
select * from Student_Biodata;