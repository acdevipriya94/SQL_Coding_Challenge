create database College;
use College;

create table students (
	Student_Name	varchar(50),
    Student_Id		int primary key,
    Email			varchar(30)
    );
    
create table courses (
	Course_Name		varchar(30),
    Course_ID		int primary key
    );
    
create table enrollment (
	Enrollment_ID	int primary key,
    Student_ID		int,
    Course_ID		int,
    foreign key (Student_ID) references students(Student_ID),
    foreign key (Course_ID) references courses(Course_ID)
    );
    
select s.Student_ID from students s
inner join enrollment e
on s.Student_ID = e.Student_ID;


select s.Student_ID, s.Student_Name, e.Course_ID
from students s
left join enrollment e
on s.Student_ID = e.Student_ID;

select s.Student_ID, s.Student_Name, e.Course_ID
from students s
right join enrollment e
on s.Student_ID = e.Student_ID;

create table current_employees (
	Cur_Emp_Name varchar(30),
    Cur_Emp_ID	int
    );
    
create table past_employees (
	Past_Emp_Name varchar(30),
    Past_Emp_ID int
    );
    
select Cur_Emp_ID from current_employees
union
select Past_Emp_ID from past_employees;

select Cur_Emp_ID from current_employees
union all
select Past_Emp_ID from past_employees;