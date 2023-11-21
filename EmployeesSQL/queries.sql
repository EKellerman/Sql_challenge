--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s
on s.emp_no = e.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE SPLIT_PART(e.hire_date,'/',3) = '1986';

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from  dept_manager as dm
JOIN departments as d
on dm.dept_no = d.dept_no
join employees as e
on dm.emp_no=e.emp_no;

--List the department number for each employee along with that 
--employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN employees as e
on de.emp_no = e.emp_no
join departments as d
on de.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose
--first name is Hercules and whose last name begins with the letter B.

SELECT e.last_name, e.first_name, e.sex
from employees as e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

--List each employee in the Sales department, 
--including their employee number, last name, and first name.
SELECT de.emp_no, e.last_name, e.first_name
FROM dept_emp as de
join employees as e
on de.emp_no = e.emp_no
join departments as d
on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
;


--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
join employees as e
on de.emp_no = e.emp_no
join departments as d
on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
or d.dept_name = 'Development'
;


--List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name).
SELECT e.last_name,
count(e.last_name) as frequency
FROM employees as e
GROUP BY e.last_name
ORDER BY frequency DESC;
