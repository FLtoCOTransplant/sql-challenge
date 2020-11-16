-- Employee Data Analysis

-- 1. Details for each employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees JOIN salaries
on employees.emp_no=salaries.emp_no;

-- 2. Who was hired in 1986?
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees WHERE hire_date IN
	(SELECT hire_date FROM employees
	WHERE hire_date BETWEEN '1985-12-31' and '1987-01-01');