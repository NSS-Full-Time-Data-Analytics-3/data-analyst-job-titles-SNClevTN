SELECT *
FROM summer_games

SELECT *
FROM winter_games

1.
SELECT COUNT(DISTINCT(sg.athlete_id))
FROM summer_games AS sg INNER JOIN athletes
ON sg.athlete_id=athletes.id --4938

SELECT athlete_id
FROM summer_games
INTERSECT
SELECT id
FROM athletes --TESTER

--2
SELECT country_id, event
FROM summer_games
INTERSECT
SELECT country_id, event
FROM winter_games--255?



--1.
SELECT country, count(DISTINCT(athlete_id)) AS number_athletes
FROM countries AS c INNER JOIN summer_games AS sg
ON c.id = sg.country_id
GROUP BY country
ORDER BY number_athletes DESC;

--2.
SELECT COUNT(DISTINCT summer_games.event) + COUNT(DISTINCT winter_games.event) AS total_event_count, country_id
FROM summer_games FULL JOIN winter_games
USING (country_id)
GROUP by country_id;

--2 showing breakout of count columns
SELECT country_id,
	COUNT(DISTINCT(summer_games.event)) AS sg_count
	COUNT(DISTINCT(winter_games.event)) AS wg_count
	COUNT(DISTINCT summer_games.event) + COUNT(DISTINCT winter_games.event) AS total_event_count, country_id
FROM summer_games FULL JOIN winter_games
USING (country_id)
GROUP by country_id;

--3.
SELECT c1.country_id, c1.year, c1.pop_in_millions, c2.year, c2.pop_in_millions
FROM country_stats AS c1 INNER JOIN country_stats AS c2
USING (country_id)
WHERE c1.year LIKE '2000%'
AND c2.year LIKE '2006%'
AND c1.pop_in_millions > c2.pop_in_millions;
--CAST needed on pop millions, both columns
