 -- to use the database customers --
 create database cutsomer_datamites;
use cutsomer_datamites;



insert into customers (CustomerId, gender, age, annual_income, spending_score, profession, work_experience, family_size)
VALUES 
(1, 'Male', 28, 45000.00, 77, 'Engineer', 5, 3),
(2, 'Female', 35, 60000.00, 65, 'Teacher', 10, 4),
(3, 'Male', 22, 30000.00, 80, 'Student', 1, 2);

delete from customers
where customerid = 1;

select * from customers;
select distinct(gender) from customers;
select distinct(family_size) from customers;

select * from customers
where profession = ""; 

update customers set profession ="ml developer" where profession ="";

create table cust_data as
select gender , age , annual_income as income , profession from customers;

select * from customers;

select * from customers
where age < 30;

select * from customers
where annual_income > 50000;

select * from customers
where work_experience = 5;

select * from customers
where gender = "female" and age < 26;

select * from customers
where profession ="teacher" or annual_income < 30000;

select * from customers
where not family_size = 2;

select * from customers
order by annual_income;

select * from customers
order by spending_score desc;

select * from customers
order by age asc;

select * from customers
where age is null;

select * from customers
where profession in ("engineer", "teacher");

select * from customers
where family_size in (2,3,5);

select * from customers
where profession like 'eng%';

select * from customers
where profession like '%er';

select * from customers
where profession like '%gi%';

select * from customers
where customerId like '_2%';

select * from customers
where age not in (25,30,35);

select * from customers
where customerId in (
select customerid from customers
where annual_income > 50000
);

