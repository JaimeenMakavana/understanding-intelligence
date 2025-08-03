-- joining practice ----
create database joining_database;
use joining_database;

CREATE TABLE Department (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(100),
  location VARCHAR(100)
);


CREATE TABLE Employee (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(100),
  age INT,
  dept_id INT,
  salary DECIMAL(10,2),
  FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Department (dept_id, dept_name, location)
VALUES
(1, 'Engineering', 'Mumbai'),
(2, 'HR', 'Delhi'),
(3, 'Marketing', 'Bangalore'),
(4, 'Finance', 'Chennai'),
(5, 'Sales', 'Hyderabad');

INSERT INTO Employee (emp_id, emp_name, age, dept_id, salary)
VALUES
(101, 'Aarav', 28, 1, 75000),
(102, 'Riya', 32, 2, 55000),
(103, 'Kabir', 26, 3, 60000),
(104, 'Meera', 30, 1, 80000),
(105, 'Ishaan', 35, 4, 90000);

select e.emp_name , e.salary , d.dept_name, d.location
from employee as e
join department as d on e.dept_id = d.dept_id;

select e.emp_name , d.dept_name 
from employee as e
left join department as d on e.dept_id = d.dept_id;

select d.dept_name, e.emp_name
from department as d
right join employee as e on d.dept_id = e.dept_id;

select d.dept_name, e.emp_name
from department as d
left join employee as e on d.dept_id = e.dept_id

union

select d.dept_name, e.emp_name
from department as d
right join employee as e on d.dept_id = e.dept_id;

select e.emp_name , e.salary
from employee as e
join department as d on e.dept_id = d.dept_id
where d.dept_name = 'engineering' and e.salary > 50000;
