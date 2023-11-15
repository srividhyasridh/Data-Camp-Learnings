--IFNULL and COALESCE
--Select the department number and name from the ‘departments_dup’ table and add a third column 
--where you name the department number (‘dept_no’) as ‘dept_info’. If ‘dept_no’ does not have a value, use ‘dept_name’.
select dept_no,dept_name,
COALESCE(dept_no, dept_name) as dept_info
from departments_dup
ORDER BY dept_no asc;

--Modify the code obtained from the previous exercise in the following way. 
--Apply the IFNULL() function to the values from the first and second column, 
--so that ‘N/A’ is displayed whenever a department number has no value, and ‘Department name not provided’ is shown 
--if there is no value for ‘dept_name’.	
select 
IFNULL(dept_no, 'N/A') as dept_no
IFNULL(dept_name,'Department name not provided') as dept_name,
COALESCE(dept_no, dept_name) as dept_info
from departments_dup
ORDER BY dept_no asc;