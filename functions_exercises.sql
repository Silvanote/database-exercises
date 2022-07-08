USE employees;

-- SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya');
# SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya')
# ORDER BY last_name, first_name  DESC;
#
# -- SELECT * FROM employees WHERE first_name = 'Irena' OR first_name= 'Vidya' OR first_name = 'Maya';
# SELECT first_name, last_name
# FROM employees
# ORDER BY first_name ASC;

-- SELECT * FROM employees WHERE first_name = 'Irena' OR first_name= 'Vidya' OR first_name = 'Maya'
--     AND gender IN ('M');
--
-- SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';
--
SELECT CONCAT (first_name, ' ', last_name) FROM employees WHERE last_name LIKE ('%e%')
ORDER BY emp_no DESC;
--
SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1900 AND CURDATE()
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT DATEDIFF(now(),'1990-01-01')
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC;

# SELECT *
# FROM employees
# WHERE year(hire_date) BETWEEN 1990 AND 1999
#   AND month(birth_date) = 12
#   AND day(birth_date) = 25
#

-- SELECT * FROM employees WHERE last_name LIKE ('%q%');
--
--
-- SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';