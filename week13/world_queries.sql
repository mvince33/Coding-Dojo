USE WORLD;
SHOW tables;

SELECT *
FROM countries
LIMIT 5;

SELECT name, continent
FROM countries
ORDER BY name DESC;

SELECT DISTINCT continent
FROM countries;

SELECT name, continent
FROM countries
WHERE continent = 'Asia';

SELECT name, continent
FROM countries
WHERE continent = 'Asia' OR continent = 'Europe';

SELECT AVG(population)
FROM countries;

SELECT continent, MAX(population)
FROM countries
GROUP BY continent;

SELECT continent, MAX(population) as Max_Pop
FROM countries
GROUP BY continent;

SELECT continent, MAX(population) as Max_Pop
FROM countries
GROUP BY continent
HAVING Max_Pop > 100000000;