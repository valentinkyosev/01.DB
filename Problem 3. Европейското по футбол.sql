SELECT c1.capital as Place, c1.country_name AS "Player 1 (Host)", " " AS Host, " " AS Guest, c2.country_name AS "Player 2 (Guest)"
FROM countries c1
CROSS JOIN countries c2
WHERE c1.continent_code = "EU" AND c2.continent_code = "EU"
  AND c1.country_code <> c2.country_code
ORDER BY RAND()