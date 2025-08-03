-- one to many table ---
create database amazon;
use amazon;

create table Customer (
   customer_id INT primary key,
   name varchar(100)
);

create table Orders (
   order_id int primary key,
   customer_id int,
   amount decimal(10,2),
   foreign key (customer_id) references Customer(customer_id)
);

insert into Customer (customer_id, name)
values (1, 'jaimeen'),(2,"aarav");

select * from Customer;

insert into orders (order_id, customer_id, amount)
values
(101, 1, 1500.00),
(103, 1, 1500.00),
(102, 2, 1500.00);

select * from orders;

update customer
set name = "jaimeen mak"
where customer_id =1 ;



