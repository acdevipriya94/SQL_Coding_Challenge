create database ECOMMERCE;
use ECOMMERCE;

create table Products (
	Product_ID int primary key,
    Product_Name varchar(50) not null,
    Category varchar(30),
    Brand varchar(30),
    Mfg_Date date,
    Price decimal (10,2) not null
);

create table Sales (
	Sale_ID int primary key,
    Sales_Person varchar(30),
    Date_of_Sale date,
    Quantity int,
    Product_ID int,
    Customer_Name varchar(30),
    foreign key (Product_ID) references Products(Product_ID)
    );
alter table Sales
add column Sales_Amount int;

select * from Products
order by Price desc
limit 3;

select count(*) as Total_Sales from Sales;

select sum(Sales_Amount) as Total_Revenue
from Sales;

select max(Sales_Amount) as MAximum_Sale_Amount
from Sales;

select min(Sales_Amount) as Min_Sale_Amount
from Sales;

select avg(Sales_Amount) as Avg_Sales
from Sales;

create table Emp_Table (
	Employee_Name varchar(30),
    Employee_ID int primary key,
    Department varchar(30),
    Department_ID int,
    Date_of_join date
    );
    
select Department, count(*) as Emp_Count from Emp_Table 
group by Department
having count(*) > 10;