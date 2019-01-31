USE join_test_db;

SELECT * FROM roles;
SELECT * FROM users;

-- Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id)
values ('Laurelynn', 'laurelynn@example.com', 2),
('Averie', 'averie@example.com', 2),
('Blake', 'blake@example.com', 2),
('Cassie', 'cassie@example.com', null);

DESCRIBE roles; --Primary key is id
DESCRIBE users; --Primary key is id and role_id is multiple

-- Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson.
SELECT * FROM users
JOIN roles ON roles.id = users.role_id;

-- OUTPUT
--id  name      email                 role_id id  name
-- 1	bob	      bob@example.com	      1	      1	  admin
-- 2	joe	      joe@example.com	      2	      2	  author
-- 7	Laurelynn	laurelynn@example.com	2	      2	  author
-- 8	Averie	  averie@example.com	  2	      2	  author
-- 9	Blake	    blake@example.com	    2	      2	  author
-- 3	sally	    sally@example.com	    3	      3	  reviewer
-- 4	adam	    adam@example.com	    3	      3	  reviewer

SELECT * FROM users
LEFT JOIN roles ON roles.id = users.role_id;

-- OUTPUT
--id  name      email                 role_id id  name
-- 1	bob	      bob@example.com	      1	      1   admin
-- 2	joe	      joe@example.com	      2	      2   author
-- 7	Laurelynn	laurelynn@example.com	2	      2   author
-- 8	Averie	  averie@example.com	  2	      2   author
-- 9	Blake	    blake@example.com	    2	      2   author
-- 3	sally	    sally@example.com	    3	      3   reviewer
-- 4	adam	    adam@example.com	    3	      3   reviewer
-- 5	jane	    jane@example.com
-- 6	mike	    mike@example.com
-- 10	Cassie	  cassie@example.com

SELECT * FROM users
RIGHT JOIN roles ON roles.id = users.role_id;

--OUTPUT
--id  name      email                 role_id id  name
-- 1	bob	      bob@example.com	      1	      1	  admin
-- 2	joe	      joe@example.com	      2	      2	  author
-- 7	Laurelynn	laurelynn@example.com	2	      2	  author
-- 8	Averie	  averie@example.com	  2	      2	  author
-- 9	Blake	    blake@example.com	    2	      2	  author
-- 3	sally	    sally@example.com	    3	      3	  reviewer
-- 4	adam	    adam@example.com	    3	      3	  reviewer
--                                            4	  commenter

SELECT * FROM users
FULL JOIN roles;
-- OUTPUT
-- id name      email                 role_id id  name
-- 1	bob	      bob@example.com	      1	      1	  admin
-- 1	bob	      bob@example.com	      1	      2	  author
-- 1	bob	      bob@example.com	      1	      3	  reviewer
-- 1	bob	      bob@example.com	      1	      4	  commenter
-- 2	joe	      joe@example.com	      2	      1	  admin
-- 2	joe	      joe@example.com	      2	      2	  author
-- 2	joe	      joe@example.com	      2	      3	  reviewer
-- 2	joe	      joe@example.com	      2	      4	  commenter
-- 3	sally	    sally@example.com	    3	      1	  admin
-- 3	sally	    sally@example.com	    3	      2	  author
-- 3	sally	    sally@example.com	    3	      3	  reviewer
-- 3	sally	    sally@example.com	    3	      4	  commenter
-- 4	adam	    adam@example.com	    3	      1	  admin
-- 4	adam	    adam@example.com	    3	      2	  author
-- 4	adam	    adam@example.com	    3	      3	  reviewer
-- 4	adam	    adam@example.com	    3	      4	  commenter
-- 5	jane	    jane@example.com		          1	  admin
-- 5	jane	    jane@example.com		          2	  author
-- 5	jane	    jane@example.com		          3	  reviewer
-- 5	jane	    jane@example.com		          4	  commenter
-- 6	mike	    mike@example.com		          1	  admin
-- 6	mike	    mike@example.com		          2	  author
-- 6	mike	    mike@example.com		          3	  reviewer
-- 6	mike	    mike@example.com		          4	  commenter
-- 7	Laurelynn	laurelynn@example.com	2	      1	  admin
-- 7	Laurelynn	laurelynn@example.com	2	      2	  author
-- 7	Laurelynn	laurelynn@example.com	2	      3	  reviewer
-- 7	Laurelynn	laurelynn@example.com	2	      4	  commenter
-- 8	Averie	  averie@example.com	  2	      1	  admin
-- 8	Averie	  averie@example.com	  2	      2	  author
-- 8	Averie	  averie@example.com	  2	      3	  reviewer
-- 8	Averie	  averie@example.com	  2	      4	  commenter
-- 9	Blake	    blake@example.com	    2	      1	  admin
-- 9	Blake	    blake@example.com	    2	      2	  author
-- 9	Blake	    blake@example.com	    2	      3	  reviewer
-- 9	Blake	    blake@example.com	    2	      4	  commenter
-- 10	Cassie	  cassie@example.com		        1	  admin
-- 10	Cassie	  cassie@example.com		        2	  author
-- 10	Cassie	  cassie@example.com		        3	  reviewer
-- 10	Cassie	  cassie@example.com		        4	  commenter


--  Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.

SELECT roles.name, COUNT(users.role_id) AS `Number of People in Role` FROM roles
LEFT JOIN users ON roles.id = users.role_id
GROUP BY users.role_id, roles.name;

-- OUTPUT
-- Name      `Number of People in Role`
-- commenter	0
-- admin	    1
-- author	    4
-- reviewer	  2


USE employees;

show tables;
-- OUTPUT
-- Tables_in_employees
-- departments
-- dept_emp
-- dept_manager
-- employees
-- salaries
-- titles

DESCRIBE dept_manager; -- Primary Keys dept_no and emp_no
SELECT * FROM departments;
DESCRIBE departments; -- Primary Key dept_no
SELECT * FROM dept_emp;
DESCRIBE dept_emp; -- Primary Keys dept_no and emp_no
SELECT * FROM dept_manager;
DESCRIBE dept_manager; -- Primary Keys dept_no and emp_no
SELECT * FROM employees;
DESCRIBE employees; -- Primary Key emp_no
SELECT * FROM salaries;
DESCRIBE salaries; -- Primary Keys emp_no and from_date
SELECT * FROM titles;
DESCRIBE titles; -- Primary Keys emp_no, title, and from_date

-- Write a query that shows each department along with the name of the current manager for that department.
SELECT dept_name AS 'Department Name', concat(employees.first_name, " ", employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE to_date = '9999-01-01'
AND gender = 'F'
ORDER BY departments.dept_name;

--OUTPUT FOR Manager for each Department
-- Department Name    Department Manager
-- Marketing	        Vishwani Minakawa
-- Finance	          Isamu Legleitner
-- Human Resources	  Karsten Sigstam
-- Production	        Oscar Ghazalie
-- Development	      Leon DasSarma
-- Quality Management	Dung Pesch
-- Sales	            Hauke Zhang
-- Research	          Hilary Kambil
-- Customer Service	  Yuchang Weedman

-- OUTPUT FOR Female Managers
-- Department Name    Department Manager
-- Finance	          Isamu Legleitner
-- Human Resources	  Karsten Sigstam
-- Development	      Leon DasSarma
-- Research	          Hilary Kambil

-- Find the current titles of employees currently working in the Customer Service department.
SELECT title AS Title, count(title) AS Count
FROM titles
JOIN employees on employees.emp_no = titles.emp_no
JOIN dept_emp on employees.emp_no = dept_emp.emp_no
JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE titles.to_date = '9999-01-01'
AND dept_emp.to_date > now()
AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

--OUTPUT
-- Title              Count
-- Assistant Engineer	68
-- Engineer	          627
-- Manager	          1
-- Senior Engineer	  1790
-- Senior Staff	      11268
-- Staff	            3574
-- Technique Leader	  241

-- Find the current salary of all current managers.
SELECT dept_name AS 'Department Name', concat(employees.first_name, " ", employees.last_name) AS 'Department Manager', salary
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN salaries ON dept_manager.emp_no = salaries.emp_no
WHERE salaries.to_date = '9999-01-01'
AND dept_manager.to_date = '9999-01-01';

-- OUTPUT
-- Department Name    Department Manager    Salary
-- Marketing	        Vishwani Minakawa	    106491
-- Finance	          Isamu Legleitner	    83457
-- Human Resources	  Karsten Sigstam	      65400
-- Production	Oscar   Ghazalie	            56654
-- Development	      Leon DasSarma	        74510
-- Quality Management	Dung Pesch	          72876
-- Sales	            Hauke Zhang	          101987
-- Research	          Hilary Kambil	        79393
-- Customer Service	  Yuchang Weedman	      58745

-- Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT concat(employees.first_name, ' ', employees.last_name) AS 'Employee Name',
departments.dept_name AS 'Department Name',
concat(managers.first_name, ' ', managers.last_name) AS 'Manager''s Name'
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees AS managers
ON managers.emp_no = dept_manager.emp_no
WHERE dept_emp.to_date > now()
AND dept_manager.to_date > now();



