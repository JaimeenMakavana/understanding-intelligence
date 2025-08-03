-- subquery -----

select * from customers
where annual_income > (
    select avg(Annual_Income) from customers
);

select * from customers
where profession in (
  select profession
  from customers
  group by profession
  having avg(Annual_Income) > 70000
);

select * from customers
where Spending_Score = (
   select max(Spending_Score) from customers
);

select t.profession , t.avg_income
from (
  select profession, avg(annual_income) as avg_income
  from customers
  group by profession
) as t
where t.avg_income > 50000;

select * from customers
where exists (
  select 1 from customers
  where Profession = c.profession
  group by Profession
  having count(*) > 1
);
