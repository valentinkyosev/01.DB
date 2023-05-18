SELECT e.first_name, e.last_name, e.hire_date, d.name FROM employees AS e 
INNER JOIN departments AS d ON d.department_id = e.department_id
WHERE date(e.hire_date) > '19990101' AND d.name IN ('Sales', 'Finance')
ORDER BY e.hire_date;