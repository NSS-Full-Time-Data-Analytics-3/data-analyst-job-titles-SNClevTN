--1
SELECT county, population, year,
	CASE WHEN population < 100000 THEN 'low population'
		 WHEN population < 500000 THEN 'medium population'
		 ELSE 'high population' END AS pop_category
FROM population
WHERE year = 2017;

--2
SELECT company, landed, new_jobs, project_type,
	CASE WHEN new_jobs < '50' THEN 'small startup'
		 WHEN new_jobs <= '100' AND new_jobs > '50' THEN 'midsize startup'
		 ELSE 'large startup' END as new_startup
FROM ecd
WHERE project_type = 'New Startup';


--3
select sum(case when year='2010' then population else 0 end) as Total_Pop_2010,
		sum(case when year='2017' then population else 0 end) as Total_Pop_2017
from population;
