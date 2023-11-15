/*If you currently have the ‘departments_dup’ table set up, use DROP COLUMN to remove the ‘dept_manager’ column from the ‘departments_dup’ table.

Then, use CHANGE COLUMN to change the ‘dept_no’ and ‘dept_name’ columns to NULL.

(If you don’t currently have the ‘departments_dup’ table set up, create it. Let it contain two columns: dept_no and dept_name. 
Let the data type of dept_no be CHAR of 4, and the data type of dept_name be VARCHAR of 40. Both columns are allowed to have null values. 
Finally, insert the information contained in ‘departments’ into ‘departments_dup’.)

Then, insert a record whose department name is “Public Relations”.

Delete the record(s) related to department number two.

Insert two new records in the “departments_dup” table. Let their values in the “dept_no” column be “d010” and “d011”.*/

--Solution:
Alter table departments_dup drop column dept_manager;

Alter table departments_dup CHANGE column dept_no dept_no char(4) NULL;
Alter table departments_dup CHANGE column dept_name dept_name varchar(40) NULL;

--# if you don’t currently have ‘departments_dup’ set up

DROP TABLE IF EXISTS departments_dup;
CREATE TABLE departments_dup
(
	dept_no CHAR(4) NULL,
	dept_name VARCHAR(40) NULL
);
INSERT INTO departments_dup
(
	dept_no,
	dept_name
)
SELECT * FROM departments;


insert into department_dups VALUES('Public Relations');

delete from departments_dup where dept_no='d002';

insert into department_dups VALUES ('d010');
insert into department_dups VALUES ('d011');

--Exercise2
/*
Create and fill in the ‘dept_manager_dup’ table, using the following code:

*/

DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (

  emp_no int(11) NOT NULL,

  dept_no char(4) NULL,

  from_date date NOT NULL,

  to_date date NULL

  );

 

INSERT INTO dept_manager_dup

select * from dept_manager;

 

INSERT INTO dept_manager_dup (emp_no, from_date)

VALUES                (999904, '2017-01-01'),

                                (999905, '2017-01-01'),

                               (999906, '2017-01-01'),

                               (999907, '2017-01-01');

 

DELETE FROM dept_manager_dup

WHERE

    dept_no = 'd001';

INSERT INTO departments_dup (dept_name)

VALUES                ('Public Relations');

 

DELETE FROM departments_dup

WHERE

    dept_no = 'd002'; 



