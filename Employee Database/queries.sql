-- List the following details of each employee: employee number, last name, first name, sex, and salary
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries
on (employees.emp_no = salaries.emp_no)

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees where hire_date like '%1986'

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_manager on departments.dept_no = dept_manager.dept_no
inner join employees on employees.emp_no = dept_manager.emp_no


-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
inner join dept_emp on departments.dept_no = dept_emp.dept_no
inner join employees on employees.emp_no = dept_emp.emp_no

-- List first name, last name, and sex for employees whose first name is 
-- "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'

-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp on employees.emp_no = dept_emp.emp_no
left join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp on employees.emp_no = dept_emp.emp_no
left join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., 
-- how many employees share each last name.
select last_name, count(*) as frequency_count
from employees
group by last_name
order by frequency_count desc


