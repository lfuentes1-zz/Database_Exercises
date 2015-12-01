-- Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name', hire_date AS 'Hire Date'
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
);

-- Find all the titles held by all employees with the first name Aamod.
SELECT emp_no AS 'Employee Number', title AS 'Title'
FROM titles
-- WHERE to_date > NOW () AND emp_no IN()
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
)
AND to_date > NOW();

-- Find all the department managers that are female.
SELECT emp_no AS 'Employee Number', CONCAT(first_name, ' ', last_name) AS 'Manager Name', gender AS 'Gender'
FROM employees
WHERE gender = 'F' AND emp_no IN (
	SELECT emp_no
	FROM dept_manager
	WHERE to_date > NOW()
);

-- BONUS Find all the department names that have female managers.
SELECT dept_name AS 'Department Name'
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender LIKE 'F'
	)
	AND to_date > NOW()
)
-- where and select always have to match
