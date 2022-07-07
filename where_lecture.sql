USE employees;

SELECT * FROM employees WHERE first_name LIKE 'Z';

SELECT * FROM employees WHERE first_name LIKE '%tine';

# SELECT * FROM employees WHERE first_name LIKE '%ee%';

SELECT * FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, title, to_date
FROM titles;

