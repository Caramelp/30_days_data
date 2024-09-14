CREATE DATABASE employee;

-- specify the database to use employees
USE employee;

-- creating a table 
CREATE TABLE Employee (
id INT primary key,
name varchar(100),
age INT,
department varchar(100),
salary INT,
hire_date DATE
);

-- Insert data into table
INSERT INTO Employee (id,name,age,department,salary,hire_date)
values (1, 'John mula', 28, 'Engineering', 70000, '2024-01-05'),
(2, 'Rielle Downs', 30, 'Human Resources', 60000, '2023-03-25'),
(4, 'Chris Wilson', 40, 'Finance', 95000, '2024-02-01'),
(5, 'linkin Taylor', 29, 'IT Support', 55000, '2024-04-10'),
(6, 'Rony Lee', 38, 'Research and Development', 90000, '2023-12-20');

-- view the data
SELECT name, salary
FROM Employee
WHERE department = 'Engineering';

-- Sort my data by salary in ascending order
SELECT * FROM Employee
ORDER BY salary ASC;

-- Limiting the results
SELECT * FROM Employee
ORDER BY salary DESC
lIMIT 3;

SELECT DISTINCT department
FROM Employee;

SELECT name, age, hire_date
FROM Employee 
ORDER BY age ASC
LIMIT 2; 

SELECT DISTINCT department FROM employees
ORDER BY department ASC;