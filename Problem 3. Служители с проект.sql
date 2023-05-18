SELECT e.employee_id, e.first_name, p.name FROM employees AS e
INNER JOIN employees_projects AS ep ON ep.employee_id = e.employee_id
INNER JOIN projects AS p ON p.project_id = ep.project_id
WHERE date(p.start_date) > '2002-08-13' AND p.end_date IS NULL
ORDER BY e.first_name, p.name
LIMIT 5;