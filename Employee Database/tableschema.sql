-- titles
create table titles (
	title_id varchar primary key not null,
	title varchar not null,
);

select * from titles

-- departments
create table departments (
	dept_no varchar not null,
	dept_name varchar not null,
	primary key (dept_no)
);

select * from departments

-- dept_emp
create table dept_emp (
	emp_no int primary key not null,
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no)
);

select * from departments

-- dept_manager
create table dept_manager (
	dept_no varchar not null,
	emp_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references dept_emp(emp_no)
);

select * from dept_manager

-- employees
create table employees (
	emp_no int,
	emp_title varchar not null,
	birth_date varchar not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date varchar not null
	foreign key (emp_title) references titles(title_id),
	foreign key (emp_no) references dept_emp(emp_no)
);

select * from employees


-- salaries
create table salaries (
	emp_no int not null,
	salary int
	foreign key (emp_no) references dept_emp(emp_no)
);

select * from salaries

 
 
 
 
 
 