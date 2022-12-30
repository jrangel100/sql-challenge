--List the employee number, last name, first name, sex, and salary of each employee 
SELECT emp_no, last_name, first_name, sex, salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';



--List the manager of each department along with their department number, department name, employee number, last name, and first name 
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN (
    SELECT dept_no, dept_name
    FROM departments
) d ON dm.dept_no = d.dept_no
JOIN (
    SELECT emp_no, last_name, first_name
    FROM employees
) e ON dm.emp_no = e.emp_no;



--List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN (
    SELECT emp_no, last_name, first_name
    FROM employees
) e ON de.emp_no = e.emp_no
JOIN (
    SELECT dept_no, dept_name
    FROM departments
) d ON de.dept_no = d.dept_no;


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name 
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN (
    SELECT dept_no, emp_no
    FROM dept_emp
) de ON e.emp_no = de.emp_no
JOIN (
    SELECT dept_no, dept_name
    FROM departments
    WHERE dept_name = 'Sales'
) d ON de.dept_no = d.dept_no;



--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN (
    SELECT dept_no, emp_no
    FROM dept_emp
) de ON e.emp_no = de.emp_no
JOIN (
    SELECT dept_no, dept_name
    FROM departments
    WHERE dept_name IN ('Sales', 'Development')
) d ON de.dept_no = d.dept_no;



--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name

