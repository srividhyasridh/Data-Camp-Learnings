--INNER JOIN
---Extract a list containing information about all managers’ employee number, first and last name, department number, and hire date. 
select e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
from employees e
inner join dept_manager dm
on e.emp_no=dm.emp_no;

--LEFT JOIN/LEFT OUTER JOIN
--Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees whose last name is Markovitch. 
--See if the output contains a manager with that name.  

--Hint: Create an output containing information corresponding to the following fields: ‘emp_no’, ‘first_name’, ‘last_name’, ‘dept_no’, ‘from_date’.
--Order by 'dept_no' descending, and then by 'emp_no'.
select e.emp_no,e.first_name,e.last_name,dm.dept_no,dm.from_date
from employees e 
left join dept_manager dm
on e.emp_no=dm.emp_no
where e.last_name='Markovitch'
order by dm.dept_no desc, e.emp_no;

--Extract a list containing information about all managers’ employee number, first and last name, department number, and hire date. 
--Use the old type of join syntax to obtain the result.
select e.emp_no,e.first_name,e.last_name,dm.dept_no,e.hire_date
from employees e, dept_manager dm
where e.emp_no=dm.emp_no
order by e.emp_no;

select e.emp_no,e.first_name,e.last_name,dm.dept_no,e.hire_date
from employees e 
join dept_manager dm
on e.emp_no=dm.emp_no;

--JOIN and WHERE together
--Select the first and last name, the hire date, and the job title of all employees whose first name is “Margareta” 
--and have the last name “Markovitch”.
select e.first_name,e.last_name,e.hire_date,t.title
from employees e join titles t
on e.emp_no=t.emp_no
where e.first_name='Margareta' and e.last_name='Markovitch'
order by e.emp_no;

--CROSS JOIN
--Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9.
SELECT dm.*, d.*
from dept_manager dm
cross join departments d 
where d.dept_no='doo9' 
order by d.dept_no;--flip table names and check-DBT

--Return a list with the first 10 employees with all the departments they can be assigned to.
--Hint: Don’t use LIMIT; use a WHERE clause.
select e.*, d.*
from employees e cross join departments d
where e.emp_no<10011
order by e.emp_no, d.dept_no;

--Join two or more tables
--Select all managers’ first and last name, hire date, job title, start date, and department name.
select e.first_name, e.last_name, e.hire_date, t.title, m.from_date,d.dept_name
from employee e JOIN titles t
on e.emp_no=t.emp_no JOIN dept_manager dm 
on t.emp_no=dm.dept_no JOIN departments d
on dm.dept_no=d.dept_no
where t.title='Manager'
order by e.emp_no;

Other solutions:

SELECT e.first_name,e.last_name,e.hire_date,t.title,m.from_date,d.dept_name
FROM employees e JOIN dept_manager m ON e.emp_no = m.emp_no JOIN
departments d ON m.dept_no = d.dept_no JOIN
titles t ON e.emp_no = t.emp_no
WHERE t.title = 'Manager'
ORDER BY e.emp_no;

SELECT e.first_name,e.last_name,e.hire_date,t.title,m.from_date,d.dept_name
FROM employees e JOIN
dept_manager m ON e.emp_no = m.emp_no JOIN
departments d ON m.dept_no = d.dept_no JOIN
titles t ON e.emp_no = t.emp_no AND m.from_date = t.from_date
ORDER BY e.emp_no;

--How many male and how many female managers do we have in the ‘employees’ database?
select e.gender,COUNT(e.emp_no) as Count, 
from employees e JOIN dept_manager dm
on e.emp_no=dm.emp_no
Group By e.gender;





















