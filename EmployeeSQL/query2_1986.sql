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