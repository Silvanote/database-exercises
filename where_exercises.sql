USE employees;

SELECT * FROM employees WHERE first_name IN('Irene', 'Vidya', 'Maya');

SELECT * FROM employees WHERE first_name = 'Irene' OR first_name= 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE first_name = 'Irene' OR first_name= 'Vidya' OR first_name = 'Maya'
AND gender IN ('M');

SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE ('e%');


SELECT * FROM employees WHERE last_name LIKE ('%q%');


SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';






