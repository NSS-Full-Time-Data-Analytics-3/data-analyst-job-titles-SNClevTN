SELECT COUNT (*)
FROM data_analyst_jobs;
--1. 1793

SELECT *
FROM data_analyst_jobs
LIMIT 10;
--2. ExxonMobil

SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location='TN'
OR location='KY';
--3. TN=21  TNorKY=27

SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location='TN'
AND star_rating>3;
--4. 17

SELECT COUNT (review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--5. 151

SELECT AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;
--6.New England

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
--7. 881

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location='CA'
--8. 230

SELECT company, star_rating, review_count
FROM data_analyst_jobs
WHERE review_count>='5000'
--GROUP BY company;
--9. does not work, can't find average OR GROUP
--10. CAN'T DO SINCE 9 BROKEN

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
--11. a.1669

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%'
OR '%Analytics%'
GROUP BY title
--doesn't work either

SELECT title
FROM data_analyst_jobs
GROUP BY title; --12; can't figure out how to "not" find analyst (-)

SELECT domain, skill, days_since_posting
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND skill='SQL'
AND days_since_posting>=21
ORDER BY days_since_posting DESC
--Bonus





SELECT domain, skill, title, days_since_posting
FROM data_analyst_jobs
WHERE skill='SQL'
AND domain IS NOT NULL
ORDER BY days_since_posting DESC;
--Bonus: consult/busi Serv x3, Consumer Goods/serv


SELECT domain, skill, title, days_since_posting
FROM data_analyst_jobs
WHERE skill='SQL'
AND domain IS NOT NULL
ORDER BY days_since_posting DESC
GROUP BY domain; -- no luck with grouping by domain