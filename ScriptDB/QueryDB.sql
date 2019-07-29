-- List the following details of each employee: employee number, last name, first name, gender, and salary.
select emp.emp_no, 
	   emp.last_name, 
	   emp.first_name, 
	   emp.gender, 
	   sal.salary
from employees emp
inner join salaries sal
on sal.emp_no = emp.emp_no;

-- List employees who were hired in 1986.
select *
from employees emp
where emp.hire_date between '1986-01-01' and '1986-12-31'

-- List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and end employment dates.
select dm.dept_no,
	   dp.dept_name,
	   em.emp_no,
	   em.last_name,
	   em.first_name,
	   dm.from_date as Start,
	   dm.to_date as End
from dept_manager dm
inner join departments dp
on dm.dept_no = dp.dept_no
inner join employees em
on em.emp_no = dm.emp_no;

-- List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select em.emp_no,
	   em.last_name,
	   dp.dept_name
from departments dp
join dept_emp dep
on dp.dept_no = dep.dept_no
join employees em
on em.emp_no = dep.emp_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
select *
from employees em
where em.first_name = 'Hercules'
and em.last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dp.dept_name,
	   dp.dept_no,
	   em.emp_no,
	   em.last_name,
	   em.first_name
from departments dp
inner join dept_emp dem
on dem.dept_no = dp.dept_no
inner join employees em
on em.emp_no = dem.emp_no
where dp.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select dp.dept_name,
	   dp.dept_no,
	   em.emp_no,
	   em.last_name,
	   em.first_name
from departments dp
inner join dept_emp dem
on dem.dept_no = dp.dept_no
inner join employees em
on em.emp_no = dem.emp_no
where dp.dept_name in ('Sales', 'Development');

-- In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

select em.last_name, count(last_name)
from employees em
group by em.last_name
order by em.last_name desc