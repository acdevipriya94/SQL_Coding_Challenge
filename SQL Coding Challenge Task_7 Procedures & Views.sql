create database organization;
use organization;

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

DELIMITER $$
create procedure Get_Emp_By_ID (in emp_id int)
begin
select * from employees where Emp_ID = emp_id;
end $$
DELIMITER ;


create view Emp_Dep_View as
select e.Emp_ID, concat(e.First_Name, ' ' , e.Last_Name) as Emp_Name , d.Department_Name
from employees e
join Departments d
on e.Department_ID = d.Department_ID;

select * from Emp_Dep_View;

create view Emp_Details as
select 
e.Emp_ID,
concat(e.First_name, " " , e.Last_Name) as Emp_Name,
d.Department_Name,
s.Salary
from employees e
join Departments d
on e.Department_ID = d.Department_ID
join salaries s
on e.Emp_ID = s.Emp_ID;
