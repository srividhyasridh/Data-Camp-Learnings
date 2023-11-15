--Aggregate Functions Exercise
--COUNT()
--How many departments are there in the “employees” database? Use the ‘dept_emp’ table to answer the question.
select COUNT(distinct dept_no) from dept_emp;

--SUM() 
--What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?
select SUM(salary) from salaries where from_date > '1997-01-01';

--MIN() and MAX()
--1. Which is the lowest employee number in the database?
--2. Which is the highest employee number in the database?
select MIN(emp_no) from employees;
select MAX(emp_no) from employees;

--AVG()
--What is the average annual salary paid to employees who started after the 1st of January 1997?
select AVG(salary) from salaries where from_date > '1997-01-01';

--ROUND()
--Round the average amount of money spent on salaries for all contracts that started after the 1st of January 1997 to a precision of cents.
SELECT ROUND(AVG(salary),2) from salaries where from_date >'1997-01-01'

