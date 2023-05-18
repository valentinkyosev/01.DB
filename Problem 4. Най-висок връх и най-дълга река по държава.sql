SELECT c.country_name, MAX(p.elevation) AS 'MaxPeakElevation', MAX(r.length) AS 'MaxRiverLength' 
FROM countries AS c
LEFT JOIN mountains_countries AS mc ON mc.country_code = c.country_code
LEFT JOIN peaks AS p ON p.mountain_id = mc.mountain_id
LEFT JOIN countries_rivers AS cr ON cr.country_code = c.country_code
LEFT JOIN rivers AS r ON r.Id = cr.river_id
GROUP BY c.country_name
ORDER BY `MaxPeakElevation` DESC, `MaxRiverLength` DESC, c.country_name ASC
limit 5;