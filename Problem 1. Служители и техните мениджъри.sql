(SELECT first_name, last_name, "(no manager)" as manager_name
FROM employees e where manager_id IS NULL)
UNION
(SELECT first_name, last_name, 
(SELECT CONCAT(first_name, " ", last_name) FROM employees 
WHERE employee_id = e.manager_id)
FROM employees e WHERE manager_id IS NOT NULL) 
ORDER BY manager_name
  