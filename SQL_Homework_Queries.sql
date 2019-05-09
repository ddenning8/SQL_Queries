-- Query #1
SELECT 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.gender,
	salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no
ORDER BY emp_no ASC;

-- Query #2
SELECT last_name, first_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY last_name ASC;

-- Query 3
SELECT 
	dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name,
	dept_manager.from_date,
 	dept_manager.to_date
FROM employees
INNER JOIN dept_manager ON
dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_manager.dept_no
ORDER BY emp_no ASC;

-- Query 4
SELECT 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
ORDER BY emp_no ASC;

-- Query 5
SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY emp_no ASC;

-- Query 6
SELECT 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales'
ORDER BY emp_no ASC;

-- Query 7
SELECT 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY emp_no ASC;

-- Query 8
SELECT last_name, COUNT(emp_no) AS "Last Name Frequency Counts"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Frequency Counts" DESC;