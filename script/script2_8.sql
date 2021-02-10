SELECT COUNT (*)
FROM data_analyst_jobs;
--1793

SELECT *
FROM data_analyst_jobs
LIMIT 10;
--ExxonMobil

SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location='TN'
OR location='KY';
--TN=21  TNorKY=27

SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location='TN'
AND star_rating=4;
--1

SELECT COUNT (review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--151

SELECT AVG(star_rating), location
FROM data_analyst_jobs
GROUP BY location;
--New England

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
--7. 881

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location='CA'
--8. 230

SELECT star_rating, company, review_count
FROM data_analyst_jobs
WHERE review_count>='5000';
--9. does not work, can't find average

SELECT domain, skill, days_since_posting
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND skill='SQL'
AND days_since_posting>=21
ORDER BY days_since_posting DESC
--9a. 11
--10.Harnham, 4.8

SELECT COUNT(title)
FROM data_analyst_jobs--1793
WHERE title LIKE '%Analyst%';
--11. 1636

SELECT title
FROM data_analyst_jobs
GROUP BY title; --12; can't figure out how to "not" find analyst

SELECT domain, skill, title, days_since_posting
FROM data_analyst_jobs
WHERE skill='SQL'
AND domain IS NOT NULL
ORDER BY days_since_posting DESC;--consult/busi Serv x3, Consumer Goods/serv

SELECT domain, skill, title, days_since_posting
FROM data_analyst_jobs
WHERE skill='SQL'
AND domain IS NOT NULL
ORDER BY days_since_posting DESC
GROUP BY domain; -- no luck with grouping by domain