SELECT c1.continent_name AS 'FROM', c2.continent_name AS 'TO'
FROM continents c1
CROSS JOIN continents c2
ORDER BY c1.continent_name, c2.continent_name;