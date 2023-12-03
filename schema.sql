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

-- Create titles table
CREATE TABLE titles (
  title_id VARCHAR(255) PRIMARY KEY,
  title VARCHAR(255) NOT NULL
);

SELECT * from titles;

-- Create employees table
CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id VARCHAR(255) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR (255) NOT NULL,
  last_name VARCHAR (255) NOT NULL,
  sex VARCHAR (10) NOT NULL,
  hire_date DATE NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * from employees;

-- Create departments table
CREATE TABLE departments (
  dept_no VARCHAR(255) NOT NULL,
  dept_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (dept_no)
);

SELECT * from departments;

-- Create dept_manager table (remember to remove the column recordID when import the data into table!)
CREATE TABLE dept_manager (
  recordID SERIAL,
  dept_no VARCHAR(255) NOT NULL,
  emp_no INT NOT NULL,
  PRIMARY KEY (recordID),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_manager;

-- Create dept_emp table (remember to remove the column recordID when import the data into table!)
CREATE TABLE dept_emp (
  recordID SERIAL,
  emp_no INT NOT NULL,
  dept_no VARCHAR(255) NOT NULL,
  PRIMARY KEY (recordID),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_emp;

-- Create salaries table (remember to remove the column recordID when import the data into table!)
CREATE TABLE salaries (
  recordID SERIAL,
  emp_no INT NOT NULL,
  salaries INT NOT NULL,
  PRIMARY KEY (recordID),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from salaries;

-- Manually import the table into the database


