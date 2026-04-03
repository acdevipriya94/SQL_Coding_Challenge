create database transactions;
use transactions;

create table accounts(
account_ID int primary key,
balance decimal(10,2)
);

start transaction;
update accounts
set balance = balance - 100
where account_ID = 1;

savepoint after_deduction;

update accounts
set balance = balance + 100
where account_ID = 2;

commit;