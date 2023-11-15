--SQL Views
--Create a view that will extract the average salary of all managers registered in the database. Round this value to the nearest cent.
--If you have worked correctly, after executing the view from the “Schemas” section in Workbench, you should obtain the value of 66924.27.
create or replace view v_avg_salary_managers as
select round(AVG(salary),2) from salaries s JOIN
dept_manager m on s.emp_no=m.emp_no;

