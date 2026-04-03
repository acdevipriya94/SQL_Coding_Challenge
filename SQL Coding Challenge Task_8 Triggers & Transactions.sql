create database sales;
use sales;

create table orders (
order_ID int primary key,
product_name varchar(25),
amount decimal(10,2)
);

create table order_history (
order_ID int,
product_name varchar(25),
amount decimal(10,2),
deleted_at datetime
);

delimiter $$

create trigger before_delete
before delete on orders
for each row
begin
insert into order_history values (
old.order_ID, old.product_name, old.amount, now() );
end $$
delimiter ;

insert into orders values
(1 , 'Lap' , 100000),
(2 , 'PC' , 50000);

delete from orders where order_ID = 1;

select * from order_history;

