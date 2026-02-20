create database University;
use University;

create table students (
	Student_ID int,
    Student_Name varchar(50),
    Department_Name varchar(20),
    Email_ID varchar(50),
    Phone_No int,
    CGPA int
    );
    
select * from students;
    
select distinct Department_Name from students where CGPA>8;
    
select * from students where Email_ID is null;

select * from students where Email_ID is not null;

create table Department (
	Department_ID int primary key,
    Department_Name varchar(20)
    );
    
insert into Department (Department_ID , Department_Name)
values(1001, 'ECE'),
(1002, 'EEE'),
(1003, 'CSE'),
(1004, 'IT'),
(1005, 'MECH'),
(1006, 'Civil');
    
select * from students where Department_Name in ('ECE' , 'MECH');

select * from students where CGPA between 7 and 9;

select * from students where CGPA not between 4 and 6;


    