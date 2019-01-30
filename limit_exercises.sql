USE employees;

SELECT DISTINCT title FROM titles;

-- List the first 10 distinct last name sorted in descending order.

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

select *
FROM employees
WHERE hire_date LIKE '1985-09-29'
ORDER BY birth_date;