CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments

CREATE TABLE dept_emp (
	emp_no INT PRIMARY KEY,
	dept_no INT
);

SELECT * FROM dept_emp

CREATE TABLE dept_manager (
	dept_no INT,
	emp_no INT PRIMARY KEY
);

SELECT * FROM dept_manager

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(5),
	birth_date VARCHAR(10),
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date VARCHAR(10)
);

SELECT * FROM employees

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT
);

SELECT * FROM salaries

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(25)
);

SELECT * FROM titles