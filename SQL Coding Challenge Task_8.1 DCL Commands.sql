create database company;
use company;

create table employees (
Emp_ID int primary key,
First_Name varchar(25),
Last_Name varchar(25),
Salary int,
Department_ID int,
foreign key (Department_ID) references Departments(Department_ID)
);

create table Departments(
Department_ID int primary key,
Department_Name varchar(25)
);

create table salaries (
Emp_ID int,
Salary decimal(10,2),
foreign key (Emp_ID) references employees (Emp_ID)
);

create user 'junior'@'localhost' identified by '1234';

grant select on employees to 'junior'@'localhost' ;

flush privileges;

revoke select on employees from 'junior'@'localhost';

