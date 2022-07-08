USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# USE  salaries;
# SELECT emp_no FROM salaries
# ORDER BY salary DESC
# LIMIT 5;

SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 4 OFFSET 40;
# CAN'T USE 5 OF 5 BECAUSE ONLY 4 ARE DISPLAYED WHEN