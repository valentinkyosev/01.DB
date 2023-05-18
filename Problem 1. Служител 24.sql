SELECT e.employee_id, e.first_name,
CASE
WHEN p.start_date >= '2005-01-01'THEN NULL
ELSE p.name
END as 'project_name'
FROM employees AS e
INNER JOIN employees_projects AS ep ON ep.employee_id = e.employee_id
INNER JOIN projects AS p ON p.project_id = ep.project_id
WHERE e.employee_id = 24
order by `project_name`;