--employee number, last name, first name, gender, salary
select  emp.emp_no,
		emp.last_name,
		emp.first_name,
		emp.gender,
		sal.salary
from employees as emp
	left join salaries as sal
	on (emp.emp_no = sal.emp_no)
order by emp.emp_no;

--employees hired in 1986
select first_name, last_name
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--information on each department's manager
select  dm.dept_no,
		d.dept_name,
		dm.emp_no,
		e.last_name,
		e.first_name,
		dm.from_date,
		dm.to_date
from dept_manager as dm
	inner join departments as d
		on (dm.dept_no = d.dept_no)
	inner join employees as e
		on (dm.emp_no = e.emp_no);

--information on each employee based on their department
select  e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
from employees as e
	inner join dept_emp as de
		on(e.emp_no = de.emp_no)
	inner join departments as d
		on(de.dept_no = d.dept_no)
order by e.emp_no;

--First name Hercules last name begins with B
select *
from employees
where first_name = 'Hercules'
and last_name like 'B%';