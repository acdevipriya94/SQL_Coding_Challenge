create database functions;
use functions;

create table empoyees (
	Emp_ID int primary key,
    First_Name varchar(15),
    Last_Name varchar (15)
    );
    
select upper(First_Name) as Upper_First_Name from empoyees;
select lower(First_Name) as Lower_First_Name from empoyees;
drop database functions;

create database functions;
use functions;

create table employees (
	Emp_ID int primary key,
    First_Name varchar(15),
    Last_Name varchar (15),
    Join_Date date
    );
    
select upper(First_Name) as Upper_First_Name from employees;
select lower(First_Name) as Lower_First_Name,
substring(First_Name, 1, 3) as First_3_Letters,
concat(First_Name, "" , Last_Name) as Full_Name
from employees;

 rename table empoyees to employees;
 drop table employees;
 create table employees (
	Emp_ID int primary key,
    First_Name varchar(15),
    Last_Name varchar (15),
    Join_Date date
    );
select Emp_ID , Join_Date, year(now()) - year(Join_Date) as Tenure_Years,
datediff(now() , Join_Date) as Total_Working_Days
from employees;

insert into employees values
(1, 'Devi', 'Priya' , '2026-01-01'),
(2, 'Udhaya' , 'Kumar' , '2026-01-03');

create database student;
use student;

create table Stu (
First_Name varchar(25),
Last_Name varchar(25),
Student_ID int
);

create function GetFullName(first_name varchar(25), last_name varchar(25))
returns varchar(100)
deterministic
return concat(first_name, " " , last_name);

select GetFullName(First_Name , Last_Name) as Full_Name
from Stu;
