SELECT title 
FROM titles
GROUP BY title ASC;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY first_name, last_name;

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;