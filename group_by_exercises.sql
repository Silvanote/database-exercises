USE employees;

SELECT DISTINCT title
FROM titles;

# SELECT LAST_NAME FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' GROUP BY last_name;

SELECT last_name, first_name
FROM employees WHERE last_name LIKE 'E%E' AND last_name LIKE 'E%'
GROUP BY last_name, first_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%Q%'
AND last_name NOT LIKE '%QU%'
GROUP BY last_name;

# SELECT last_name, COUNT (*)
# FROM employees
# WHERE last_name LIKE '%Q%'
#   AND last_name NOT LIKE '%QU%'
# GROUP BY last_name
# ORDER BY COUNT (*) ASC
# LIMIT 10;

