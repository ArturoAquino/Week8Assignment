select count(birth_date) as "Born after 1965-01-01", titles.title from employees 
inner join titles on titles.emp_no =  employees.emp_no
group by title having count(birth_date) > '1965-01-01';

select t.title, avg(salary) as "Average Salary" from titles t
inner join salaries s
on t.emp_no = s.emp_no group by title;

SELECT sum(s.salary) as "Money spent of Salary" , d.dept_name
FROM salaries s 
INNER JOIN dept_emp dep ON dep.emp_no = s.emp_no 
INNER JOIN departments d ON d.dept_no = dep.dept_no 
WHERE dept_name = "Marketing" AND dep.from_date >= '1990-01-01' AND dep.to_date <= '1992-12-31'
GROUP BY d.dept_name





 
