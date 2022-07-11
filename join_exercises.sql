USE employees;

-- EMPLOYEE DATABASE JOIN EXERCISE
-- 1. QUERY NAME OF CURRENT MANAGER FOR THAT DEPARTMENT
SELECT d.dept_name as department, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE YEAR (dm.to_date) = 9999
ORDER BY d.dept_name;

# --2. QUERY NAME OF ALL DEPARTMENTS CURRENTLY MANAGED BY WOMEN
--
SELECT d.dept_name as department, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE YEAR (dm.to_date) = 9999 AND e.gender = 'F'
ORDER BY d.dept_name;

-- --3. QUERY EMPLOYEES CURRENTLY WORKING IN THE CUSTOMER SERVICE DEPARTMENT
SELECT t.title, COUNT(t.title) as Total
FROM employees as e
         JOIN titles as t
              ON e.emp_no = t.emp_no
         JOIN dept_manager as de
              ON e.emp_no = de.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

-- --4. QUERY SALARY OF ALL CURRENT MANAGERS
SELECT t.title, COUNT(t.title) as Total
FROM employees as e
         JOIN titles as t
              ON e.emp_no = t.emp_no
         JOIN dept_manager as de
              ON e.emp_no = de.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

# --BONUS
