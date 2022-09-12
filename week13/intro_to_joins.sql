SELECT countries.name
FROM countries
JOIN languages
ON countries.id = languages.country_id
WHERE languages.language = 'Dutch';

SELECT cities.name
FROM countries
JOIN cities
ON countries.id = cities.country_id
WHERE countries.name = 'Belgium';

SELECT countries.name, languages.language
FROM countries
JOIN languages
ON countries.id = languages.country_id
WHERE countries.name = 'United States';

SELECT c.name, l.language
FROM countries AS c
JOIN languages AS l
ON c.id = l.country_id
WHERE c.name = 'United States';
