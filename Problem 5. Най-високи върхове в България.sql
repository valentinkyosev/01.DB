SELECT c.country_code, m.mountain_range, p.peak_name, p.elevation FROM countries AS c
INNER JOIN mountains_countries AS mc ON mc.country_code = c.country_code
INNER JOIN mountains AS m ON m.id = mc.mountain_id
INNER JOIN peaks AS p ON p.mountain_id = m.id
WHERE c.country_name = 'Bulgaria' AND p.elevation > 2835
ORDER BY elevation DESC;