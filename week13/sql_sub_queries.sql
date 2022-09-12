USE world;

SELECT name, gnp
FROM countries
WHERE gnp >
  (SELECT AVG(gnp)
   FROM countries);

SELECT name, population, 
  (SELECT ROUND(AVG(population))
   FROM countries)
FROM countries
LIMIT 5;

SELECT countries.name,
  (SELECT COUNT(*)
   FROM languages
   WHERE countries.id = languages.country_id) AS lang_num
FROM countries
ORDER BY lang_num DESC;

SELECT AVG(num_countries)
FROM 
  (SELECT COUNT(*) AS num_countries
   FROM countries
   GROUP BY region) AS sub;