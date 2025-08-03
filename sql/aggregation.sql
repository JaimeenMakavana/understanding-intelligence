-- aggregation function --
select count(*) as total_customers
from customers;

select avg(age) as avg_age
from customers;

select sum(annual_income) as total_income
from customers;

select 
max(spending_score) as highest_score,
min(spending_score) as lowest_score
from customers;

select profession, avg(annual_income) as avg_income
from customers
group by profession;

select gender , count(*) as count
from customers
group by gender;

select profession , avg(annual_income) as avg_income
from customers
group by profession
having avg_income > 50000;