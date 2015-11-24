SELECT COUNT(*), gender
FROM employees
WHERE (
	first_name = 'Irena' 
	OR first_name = "Vidya"
	OR first_name = 'Maya'
)
GROUP BY gender;

SELECT *, CONCAT(first_name, ' ' ,last_name)
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE first_name = 'Khun'
AND last_name = 'Bernini';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;
-- Khun Bernin should be the result

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';
