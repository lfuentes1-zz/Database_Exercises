SELECT COUNT(*), gender
FROM employees
WHERE (
	first_name = 'Irena' 
	OR first_name = "Vidya"
	OR first_name = 'Maya'
)
GROUP BY gender;

SELECT *, CONCAT(last_name, ', ' ,first_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

SELECT *, DATEDIFF(NOW(), hire_date) AS total_days
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY hire_date ASC, birth_date DESC;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, COUNT(*) AS people_count
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY full_name
ORDER BY people_count DESC;