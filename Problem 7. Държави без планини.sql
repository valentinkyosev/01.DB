SELECT country_name FROM countries
WHERE country_code NOT IN (SELECT DISTINCT country_code FROM mountains_countries);