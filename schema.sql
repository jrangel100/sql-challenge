departments
----
dept_no varchar(200) PK
dept_name varchar(200)

dept_emp
-----
emp_no int PK
dept_no varchar(200) FK >- departments.dept_no

dept_manager
-----
dept_no varchar(200) PK FK >- departments.dept_no
emp_no int FK >- employees.emp_no

employees
-----
emp_no int PK
emp_title_id FK >- titles.title
birth_date Date
first_name varchar(200)
last_name varchar(200)
sex varchar(200)
hire_date Date

salaries
-----
emp_no int PK FK >- employees.emp_no
salary int

titles
-----
title_id varchar(200) PK
title varchar(200)