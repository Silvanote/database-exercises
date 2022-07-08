USE employees;

-- SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name  DESC;

-- SELECT * FROM employees WHERE first_name = 'Irena' OR first_name= 'Vidya' OR first_name = 'Maya';
# SELECT first_name, last_name
# FROM employees
# ORDER BY first_name ASC;

-- SELECT * FROM employees WHERE first_name = 'Irena' OR first_name= 'Vidya' OR first_name = 'Maya'
--     AND gender IN ('M');
--
-- SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';
# --
SELECT * FROM employees WHERE last_name LIKE ('%e%')
ORDER BY emp_no DESC;
--
--
-- SELECT * FROM employees WHERE last_name LIKE ('%q%');
--
--
-- SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';