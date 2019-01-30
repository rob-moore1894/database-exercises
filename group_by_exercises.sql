USE employees;

-- In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title
from titles;

-- Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY. -> DONE
-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows. -> DONE
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

-- Find the unique last names with a 'q' but not 'qu'
-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others. -> DONE
SELECT last_name, COUNT(last_name) AS 'Number with same last name'
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name DESC;

-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names
SELECT COUNT(*) AS 'Number by Gender', gender
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya'
GROUP BY gender;