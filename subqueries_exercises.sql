USE employees;

-- Find all the employees with the same hire date as employee 101010 using a sub-query.
-- 69 Rows

SELECT concat(employees.first_name, ' ', employees.last_name) AS 'Employee', emp_no AS 'Employee Number'
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

-- Find all the titles held by all employees with the first name Aamod.
-- 314 total titles, 6 unique titles

SELECT *
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE employees.first_name = 'Aamod'
)

-- Find all the current department managers that are female.
SELECT *
FROM dept_manager
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE employees.gender = 'F'
) AND dept_manager.to_date > now();

--OUTPUT
-- dept_no  emp_no  from_date   to_date
-- d002	    110114	1989-12-17	9999-01-01
-- d003	    110228	1992-03-21	9999-01-01
-- d005	    110567	1992-04-25	9999-01-01
-- d008	    111534	1991-04-08	9999-01-01

-- Subquery
SELECT employees.first_name AS first_name, employees.last_name AS last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE dept_manager.to_date > now()
)
AND employees.gender = 'F';

-- JOIN
SELECT first_name, last_name
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
WHERE to_date > now()
AND gender = 'F';

-- OUTPUT
-- first_name   last_name
-- Isamu	      Legleitner
-- Karsten	    Sigstam
-- Leon	        DasSarma
-- Hilary	      Kambil

-- ***** BONUS *****
-- Find all the department names that currently have female managers.
SELECT dept_name as 'Department'
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE to_date > now()
  AND emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE employees.gender = 'F'
  )
)

-- Find the first and last name of the employee with the highest salary.
-- Subquery
SELECT employees.first_name AS first_name, employees.last_name AS last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM salaries
  WHERE salary in (
    SELECT MAX(salary)
    FROM salaries
  )
);

-- JOIN
SELECT employees.first_name AS first_name, employees.last_name AS last_name
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.to_date > now()
ORDER BY salaries.salary DESC
LIMIT 1;




