create database online_bookstore;
use online_bookstore;

create table Books (
	Book_ID int,
    Book_Title varchar(50),
    ISBN_Num int unique,
    Author_Name varchar(50)
    );

alter table Books
add primary key(Book_ID);
alter table Books
add unique (ISBN_Num);

create table Order_Info (
	Order_Id int primary key,
    Order_Date date,
    Book_Id int,
    foreign key (Book_ID) references Books(Book_ID)
    );

set SQL_SAFE_UPDATES = 0;    
delete from Order_Info where Order_Date > '2026-01-01' ;

TRUNCATE TABLE Order_Info;