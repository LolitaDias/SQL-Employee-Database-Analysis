--Schema/Table creation scripts
-- Drop table if exists
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE titles;
DROP TABLE departments;
DROP TABLE employees;

--Create Table departments
CREATE TABLE departments(
dept_no	VARCHAR PRIMARY KEY,
dept_name VARCHAR NOT NULL);

--Create Table employees
CREATE TABLE employees (
emp_no INTEGER PRIMARY KEY,
birth_date DATE  NOT NULL,
first_name VARCHAR  NOT NULL,
last_name VARCHAR  NOT NULL,
gender VARCHAR  NOT NULL,
hire_date DATE  NOT NULL);

--Create Table dept_emp
CREATE TABLE dept_emp(
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
from_date DATE NOT NULL,
to_date DATE NOT NULL);

--Create Table dept_manager
CREATE TABLE dept_manager(
dept_no VARCHAR NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
emp_no INTEGER NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
from_date date NOT NULL,	
to_date date NOT NULL);

--Create table salaries
CREATE TABLE salaries(
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),	
salary INTEGER NOT NULL,
from_date DATE NOT NULL,
to_date	DATE NOT NULL);

--Create table titles
CREATE TABLE titles(
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),	
title VARCHAR NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL);

--Verify if the tables have been created 
select * from departments;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from titles;
