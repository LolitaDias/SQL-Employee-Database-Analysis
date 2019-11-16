--1.List the following details of each employee: employee number, last name, first name, gender, and salary.

select 
e.emp_no as "Employee Number",
e.last_name as "Last Name",
e.first_name as "First Name",
e.gender as "Gender",
s.salary as "Salary"
from employees e, salaries s
where e.emp_no=s.emp_no;

--2.List employees who were hired in 1986.
select * 
from employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01'; 

--3.List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
select 
d.dept_no as "Department Number",
d.dept_name as "Department Name",
dm.emp_no as "Manager Employee Number",
e.first_name as "First Name",
e.last_name as "Last Name",
dm.from_date as "Start Employment Date",
dm.to_date as "End Employment Date"
from departments d, dept_manager dm, employees e
where d.dept_no=dm.dept_no
and e.emp_no=dm.emp_no;

--4.List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select  
e.emp_no as "Employee Number",
e.first_name as "First Name",
e.last_name as "Last Name",
d.dept_name as "Department Name"
from departments d, dept_emp de,employees e
where d.dept_no=de.dept_no
and e.emp_no=de.emp_no;

--5.List all employees whose first name is "Hercules" and last names begin with "B."
select * 
from employees 
where first_name ='Hercules' and last_name like 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select 
e.emp_no as "Employee Number",
e.first_name as "First Name",
e.last_name as "Last Name",
d.dept_name as "Department Name"
from dept_emp de,departments d,employees e
where d.dept_no=de.dept_no
and e.emp_no=de.emp_no
and d.dept_name='Sales';

--7.List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,count(last_name) as "frequency count of employee last names"
from employees
group by last_name
order by "frequency count of employee last names" desc;
