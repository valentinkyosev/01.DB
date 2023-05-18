SELECT c.country_code, c.country_name, m.mountain_range FROM countries AS c
INNER JOIN mountains_countries AS mc ON mc.country_code = c. country_code
INNER JOIN mountains AS m ON mc.mountain_id = m.id
WHERE c.country_name IN ('United States', 'Russia', 'Bulgaria')
ORDER BY c.country_code, m.mountain_range;