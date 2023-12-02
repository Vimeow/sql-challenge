-- Data Engineering

-- Delete tables if exist
DROP TABLE employees;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE salaries;
DROP TABLE departments;
DROP TABLE titles;

-- Set the date style for the database before importing data into the table
ALTER DATABASE schema SET datestyle TO "ISO, MDY";

-- create employees table
CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(255) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR (255) NOT NULL,
  last_name VARCHAR (255) NOT NULL,
  sex VARCHAR (255) NOT NULL,
  hire_date DATE NOT NULL
);

SELECT * from employees;

-- create dept_manager table (remember to remove the column recordID when import the data into table!)
CREATE TABLE dept_manager (
  recordID SERIAL PRIMARY KEY,
  dept_no VARCHAR(255) NOT NULL,
  emp_no INT NOT NULL
);

SELECT * from dept_manager;

-- dept_emp table (remember to remove the column recordID when import the data into table!)
CREATE TABLE dept_emp (
  recordID SERIAL PRIMARY KEY,
  emp_no INT NOT NULL,
  dept_no VARCHAR(255) NOT NULL
);

SELECT * from dept_emp;

-- salaries table (remember to remove the column recordID when import the data into table!)
CREATE TABLE salaries (
  recordID SERIAL PRIMARY KEY,
  emp_no INT NOT NULL,
  salaries INT NOT NULL
);

SELECT * from salaries;

-- titles table
CREATE TABLE titles (
  title_id VARCHAR(255) PRIMARY KEY,
  title VARCHAR(255) NOT NULL
);

SELECT * from titles;

-- departments table
CREATE TABLE departments (
  dept_no VARCHAR(255) PRIMARY KEY,
  dept_name VARCHAR(255) NOT NULL
);

SELECT * from departments;

-- Manually import the table into the database


