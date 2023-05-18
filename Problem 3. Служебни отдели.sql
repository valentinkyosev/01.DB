SELECT e.employee_id, e.first_name, e.salary, d.name FROM employees AS e
JOIN departments AS d ON d.department_id = e.department_id
WHERE salary > 15000
ORDER BY d.department_id desc,salary desc
LIMIT 5;