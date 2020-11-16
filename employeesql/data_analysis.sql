-- Employee Data Analysis

-- 1. Details for each employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees JOIN salaries
on employees.emp_no=salaries.emp_no;

-- 2. Who was hired in 1986?
SELECT employees.first_name, 
	   employees.last_name, 
	   employees.hire_date
FROM employees WHERE hire_date IN
	(SELECT hire_date FROM employees
	WHERE hire_date BETWEEN '1985-12-31' and '1987-01-01');
	
-- 3. Who is the manager of this dept?  Mmm-kay?
SELECT  departments.dept_no, 
		departments.dept_name, 
		dept_manager.emp_no, 
		employees.last_name, 
		employees.first_name
FROM departments INNER JOIN dept_manager
on departments.dept_no=dept_manager.dept_no
INNER Join employees
on dept_manager.emp_no=employees.emp_no;

-- 4. List the Dept. for each employee for the Bobs!
SELECT employees.emp_no, 
	   employees.last_name, 
	   employees.first_name,
	   departments.dept_name
FROM employees INNER JOIN dept_manager ON
employees.emp_no=dept_manager.emp_no
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no;
