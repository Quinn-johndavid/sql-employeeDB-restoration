select employees.emp_no, last_name, first_name, sex, salary 
from employees 
inner join salaries on employees.emp_no = salaries.emp_no;
-------
select first_Name, last_name, hire_date 
from employees 
where hire_date > '1986-01-01'
and hire_date < '1987-01-01'
------
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager 
join departments on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no;
--------
select employees.emp_no, dept_emp.dept_no, last_name, first_name, departments.dept_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no

--------

select first_name, last_name, sex 
from employees
where first_name = 'Hercules'
and last_name like 'B%'

--------
select employees.emp_no, last_name, first_name, dept_name
from employees 
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name ='Sales'

------------
select employees.emp_no, last_name, first_name, dept_name
from employees 
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name ='Sales' or
dept_name = 'Development'

-----
select employees.last_name, count (*)
from employees
group by employees.last_name
order by count (*) desc;