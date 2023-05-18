(SELECT mountain_range,  
(SELECT peak_name FROM peaks WHERE mountain_id = m.id ORDER by elevation DESC LIMIT 1) peak_name,
(SELECT elevation FROM peaks WHERE mountain_id = m.id ORDER by elevation DESC LIMIT 1) elevation
 from mountains m  
WHERE id IN (SELECT mountain_id FROM mountains_countries WHERE country_code = 'BG')
AND id IN (SELECT DISTINCT mountain_id FROM peaks))
UNION
(SELECT mountain_range, "no",  "info"
 from mountains m  
WHERE id IN (SELECT mountain_id FROM mountains_countries WHERE country_code = 'BG')
AND NOT EXISTS (SELECT 1 FROM peaks WHERE mountain_id = m.id))
ORDER BY mountain_range