-- Using the example in the "Associative Table Joins" section as a guide, write a query that shows each department along with the name of the current 
-- manager for that department.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name', d.dept_name AS 'Department Name'
FROM departments as d
JOIN dept_manager as dm
  ON d.dept_no = dm.dept_no
JOIN employees as e
  ON dm.emp_no = e.emp_no
WHERE dm.to_date > NOW();

-- Find the name of all departments currently managed by women.
--   Department Name | Manager Name
--   ----------------+-----------------
--   Development     | Leon DasSarma
--   Finance         | Isamu Legleitner
--   Human Resources | Karsetn Sigstam
--   Research        | Hilary Kambil
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name', d.dept_name AS 'Department Name'
FROM departments as d
JOIN dept_manager as dm
  ON d.dept_no = dm.dept_no
JOIN employees as e
  ON dm.emp_no = e.emp_no
WHERE dm.to_date > NOW()
AND e.gender LIKE 'F';
  
-- Find the current titles of employees currently working in the Customer Service department.
--   Title              | Count
--   -------------------+------
--   Assistant Engineer |    68
--   Engineer           |   627
--   Manager            |     1
--   Senior Engineer    |  1790
--   Senior Staff       | 11268
--   Staff              |  3574
--   Technique Leader   |   241
SELECT t.title as 'Title', COUNT(e.emp_no) as 'Count'
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
JOIN titles as t 
  ON e.emp_no = t.emp_no
WHERE de.to_date > NOW()
AND t.to_date > NOW()
AND d.dept_name = "Customer Service"
GROUP BY t.title;

-- Find the current salary of all current managers.
--   Department Name    | Name              | Salary
--   -------------------+-------------------+-------
--   Customer Service   | Yuchang Weedman   |  58745
--   Development        | Leon DasSarma     |  74510
--   Finance            | Isamu Legleitner  |  83457
--   Human Resources    | Karsten Sigstam   |  65400
--   Marketing          | Vishwani Minakawa | 106491
--   Production         | Oscar Ghazalie    |  56654
--   Quality Management | Dung Pesch        |  72876
--   Research           | Hilary Kambil     |  79393
-- Sales              | Hauke Zhang       | 101987
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name', s.salary AS 'Current Salary'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN  departments AS d ON d.dept_no = dm.dept_no
JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date > NOW(); 

-- Find the names of all current employees, their department name, and their current manager's name.
--    (Table and column aliases are ESSENTIAL for this one)
--   240,124 Rows
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Name', d.dept_name AS 'Department Name', 
CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager'
FROM employees as e
JOIN dept_emp as de
  ON e.emp_no = de.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
JOIN dept_manager as dm
  ON dm.dept_no = d.dept_no
JOIN employees as managers
  ON dm.emp_no = managers.emp_no
WHERE de.to_date > NOW()
AND dm.to_date > NOW();


