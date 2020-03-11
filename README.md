# SQL Homework - Employee-Database-Analysis

![sql.png](sql.png)

## Background

In this assignment, we have designed the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, we have performed:

1. Data Modeling

2. Data Engineering

3. Data Analysis

The goal of this project was to extract, process, and analyze corporate employee data contained in multiple CSV datasets. The former tasks were completed using SQL queries (through PostgreSQL) to store and inspect the data, and the latter was performed using Python with Pandas, Numpy, and Matplotlib (through Jupyter Notebooks)to generate meaningful visualizations.

#### Data Modeling

Tasks:

Inspected the CSVs and sketched out an ERD of the tables. Used a tool  [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com) to answer the question : How do the datasets of employee data relate to each other?

#### Data Engineering

Used the information we have to create a table schema for each of the six CSV files. Specified data types, primary keys, foreign keys, and other constraints.

* Import each CSV file into the corresponding SQL table.

#### Data Engineering

Following questions were answered as a part of this assignment:

1. What is the employee number, last name, first name, gender, and salary of each employee?
2. What is the last name, first name, and hire date of each employee hired in 1986?
3. What is/are the department number(s), department name(s), employee number, last name, first name, start date(s), and end date(s) of each department manager?
4. What is/are the employee number, last name, first name, and department name(s) of each employee?
5. What is the last name and first name of each employee whose last name begins with B and first name is Hercules?
6. What is the employee number, last name, and first name of each employee ever assigned to the sales department?
7. What is the employee number, last name, and first name of each employee ever assigned to the sales and/or development departments?
8. In descending order, what is the frequency count of employee last names?

#### Data Analysis

1. What are the most common employee salary ranges?
2. What is the average salary for each employee title?

#### Datasets

https://github.com/LolitaDias/SQL-Employee-Database-Analysis/blob/master/data/departments.csv
https://github.com/LolitaDias/SQL-Employee-Database-Analysis/blob/master/data/dept_emp.csv
https://github.com/LolitaDias/SQL-Employee-Database-Analysis/blob/master/data/dept_manager.csv
https://github.com/LolitaDias/SQL-Employee-Database-Analysis/blob/master/data/employees.csv
https://github.com/LolitaDias/SQL-Employee-Database-Analysis/blob/master/data/salaries.csv
https://github.com/LolitaDias/SQL-Employee-Database-Analysis/blob/master/data/titles.csv

#### Tasks:

#### Data Modeling

1. Inspect employee data CSV datasets.
2. Determine parameters for primary and foreign keys.
3. Create table schema in online entity relationship diagram (ERD) software (http://www.quickdatabasediagrams.com/).
4. Connect tables with foreign keys to tables with matching primary keys.

#### Data Engineering

1. Create PostgreSQL database for employee data.
2. Create table schema in database.
3. Import employee data CSV datasets into appropriate tables.
4. Perform appropriate queries, within and across tables, to obtain the desired data.

#### Data Analysis

1. Establish connection between PostgreSQL database and Jupyter Notebook file.
2. Extract a list of table names from database.
3. Extract table metadata from database.
4. Extract table data from database to identically named Pandas data frames.
5. Replace null values in each data frame with appropriate default values.
6. Calculate minimum and maximum employee salary.
7. Generate equally-sized salary range bins based on minimum and maximum salaries.
8. Calculate number of salaries within each bin.
9. Plot histogram of employee salary range frequencies.
10. Merge employee salary and employee title data frames into single data frame.
11. Group the new data frame by title and calculate average salary for each title.
12. Plot bar chart of average employee salary by title.


#### Results
![ERD](EmployeeSQL/ERD.PNG)





















