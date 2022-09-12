SELECT name, surface_area, population
FROM countries
WHERE surface_area < 501
AND population > 100000;

SELECT name, government_form, capital
FROM countries
WHERE government_form = 'Constitutional Monarchy'
AND capital > 200
AND life_expectancy > 75;

SELECT COUNT(name) AS number_of_countries, region
FROM countries
GROUP BY region
ORDER BY number_of_countries DESC;

SELECT c.name, l.language, l.percentage
FROM countries AS c
JOIN languages AS l
ON c.id = l.country_id
WHERE l.language = 'Slovene'
ORDER BY l.percentage DESC;

SELECT COUNT(ci.name) AS city_count, co.name
FROM cities AS ci
JOIN countries AS co
ON ci.country_id = co.id
GROUP BY co.name
ORDER BY city_count DESC;

SELECT ci.name, ci.population
FROM countries as co
JOIN cities as ci
ON ci.country_id = co.id
WHERE ci.population > 500000
AND co.name = 'Mexico'
ORDER BY ci.name DESC;

SELECT c.name, l.language, l.percentage
FROM countries AS c
JOIN languages AS l
ON c.id = l.country_id
WHERE l.percentage > 89
ORDER BY l.percentage DESC;

SELECT ci.name, ci.population
FROM countries AS co
JOIN cities AS ci
WHERE co.name = 'Argentina'
AND ci.district = 'Buenos Aires'
AND ci.population > 500000;