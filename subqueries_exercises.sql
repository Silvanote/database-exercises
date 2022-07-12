USE employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

#Find all employees with same hire date as employee number 101010
select * from employees as e
    where e.hire_date = (
        select e.hire_date from employees as e where e.emp_no = 101010
);
# Find all the titles held by all employees name Aamod

select title from titles
    where emp_no IN (
        select emp_no from employees where first_name = 'Aamod'
);

# FIND all the current dept managers that are female
select first_name, last_name from employees
    where emp_no IN (
    select emp_no from dept_manager
        where emp_no IN (
        select emp_no from employees where gender = 'F'
    )
          and to_date > CURDATE()
) ;

#BONUS

select dept_name from departments
    where dept_no IN (
        select dept_no from dept_manager
        where emp_no IN (
            select emp_no from employees
            where gender ='F'
    )
          and to_date > CURDATE()
);


select first_name, last_name from employees
    where emp_no IN (
    select emp_no from salaries
        where salary = (
        select max(salary) from salaries
    )
);

