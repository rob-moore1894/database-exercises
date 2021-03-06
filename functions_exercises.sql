USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'e%';

-- Find all employees hired in the 90s — 135,214 rows.
SELECT *
from employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name like '%q%';

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
-- Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen. -> DONE
-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig. -> DONE

-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda. -> DONE
SELECT *
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya'
ORDER BY last_name DESC, last_name;

-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'M';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows. -> DONE
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change! -> DONE
-- Now reverse the sort order for both queries. -> DONE (last_name with 'e') -> DONE ('Irena', 'Vidya', and 'Maya')
-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results. -> DONE
SELECT *, concat(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC;

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini. -> DONE
-- Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql. Update it to find just the first 5 employees. -> DONE
-- Update the query to find the tenth page of results. -> DONE
-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT *,
  CURDATE(),
  DATEDIFF(CURDATE(),hire_date) AS 'Number of days with company'
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';