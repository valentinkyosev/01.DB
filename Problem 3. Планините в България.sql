SELECT m.mountain_range, p.peak_name, p.elevation
FROM mountains m
LEFT OUTER JOIN peaks p ON p.mountain_id = m.id 
WHERE m.id IN (SELECT mountain_id FROM mountains_countries WHERE country_code = 'BG')
AND (p.id IS NULL 
OR p.id = (SELECT id FROM peaks WHERE mountain_id = m.id ORDER by elevation DESC LIMIT 1))
ORDER BY p.elevation DESC;