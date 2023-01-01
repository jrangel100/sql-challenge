departments
----
dept_no VARCHAR(200) PRIMARY KEY
dept_name VARCHAR(200)

dept_emp
-----
emp_no INTEGER PRIMARY KEY
dept_no VARCHAR(200) FK >- departments.dept_no

dept_manager
-----
dept_no VARCHAR(200) PRIMARY KEY FK >- departments.dept_no
emp_no INTEGER FK >- employees.emp_no

employees
-----
emp_no INTEGER PRIMARY KEY
emp_title_id FK >- titles.title
birth_date Date NOT NULL
first_name VARCHAR(200) NOT NULL
last_name VARCHAR(200) NOT NULL
sex VARCHAR(200)
hire_date Date NOT NULL

salaries
-----
emp_no INTEGER PRIMARY KEY FK >- employees.emp_no
salary INTEGER

titles
-----
title_id VARCHAR(200) PRIMARY KEY
title VARCHAR(200)