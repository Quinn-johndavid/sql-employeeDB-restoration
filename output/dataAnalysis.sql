---------Question 1--------- List the employee number, last name, first name, sex, and salary of each employee ---------

select employees.emp_no, last_name, first_name, sex, salary 
from employees 
inner join salaries on employees.emp_no = salaries.emp_no;

---------Question 2--------- List the first name, last name, and hire date for the employees who were hired in 1986 ---------

select first_Name, last_name, hire_date 
from employees 
where hire_date > '1986-01-01'
and hire_date < '1987-01-01'

---------Question 3--------- List the manager of each department along with their department number, department name, employee number, last name, and first name ---------

select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager 
join departments on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no;

---------Question 4--------- List the manager of each department along with their department number, department name, employee number, last name, and first name ---------

select employees.emp_no, dept_emp.dept_no, last_name, first_name, departments.dept_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no

---------Question 5--------- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B ---------

select first_name, last_name, sex 
from employees
where first_name = 'Hercules'
and last_name like 'B%'

---------Question 6--------- List each employee in the Sales department, including their employee number, last name, and first name ---------

select employees.emp_no, last_name, first_name, dept_name
from employees 
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name ='Sales'

---------Question 7--------- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name ---------

select employees.emp_no, last_name, first_name, dept_name
from employees 
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name ='Sales' or
dept_name = 'Development'

---------Question 8--------- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) ---------

select employees.last_name, count (*)
from employees
group by employees.last_name
order by count (*) desc;