-- 1.List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees as e
INNER JOIN salaries as s 
ON e.emp_no = s.emp_no;

-- 2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name,dm.emp_no, e.last_name,e.first_name
FROM dept_manager AS dm
INNER JOIN employees AS e
ON dm.emp_no = e.emp_no
INNER JOIN department AS d
ON dm.dept_no = d.dept_no;

-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name,e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN department as d
ON de.dept_no = d.dept_no;


-- 5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, Last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND Last_name LIKE 'B%';

-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN department AS d
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN department AS d
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Count of Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Count of Last Name" DESC;