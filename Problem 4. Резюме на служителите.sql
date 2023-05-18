SELECT e.employee_id, 
concat(e.first_name, '', e.last_name) as employee_name, 
concat(m.first_name, '', m.last_name) as manager_name,
d.name as department_name FROM employees AS e
INNER JOIN employees AS m ON m.employee_id = e.manager_id
INNER JOIN departments AS d ON d.department_id = e.department_id
ORDER BY e.employee_id
LIMIT 5;