USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;