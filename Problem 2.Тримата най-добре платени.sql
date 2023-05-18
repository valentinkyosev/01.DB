(SELECT first_name, last_name, "manager" as position, salary
FROM employees 
WHERE employee_id IN (SELECT DISTINCT manager_id FROM employees 
WHERE manager_id IS NOT NULL)
ORDER BY salary DESC LIMIT 3)
UNION
(SELECT first_name, last_name, "employee", salary
FROM employees  
WHERE employee_id NOT IN (SELECT DISTINCT manager_id FROM employees 
WHERE manager_id IS NOT NULL)
ORDER BY salary DESC LIMIT 3)
ORDER BY salary DESC,first_name,last_name 
