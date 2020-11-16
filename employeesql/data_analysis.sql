-- Employee Data Analysis

-- 1. Details for each employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees JOIN salaries
on employees.emp_no=salaries.emp_no;