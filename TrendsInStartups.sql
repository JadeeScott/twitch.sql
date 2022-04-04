TrendsInStartups.sql
SELECT *
FROM startups;

--Calculate total number of companies in the table

SELECT COUNT(*)
FROM startups;

--Total value of companies

SELECT SUM(valuation)
FROM startups;

--Highest amount of money raised by a startup.
--Return maximum amount of money raised.

SELECT MAX(raised)
FROM startups;

--Edit query to return maximum amount of money raised, during 'seed' stage

SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

--In what year was the oldest company on the list founded?

SELECT MIN(founded)
FROM startups;

--Return Avg. Valuation

SELECT AVG(valuation)
FROM startups;

--Return Avg. valuation in each category

SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

--Return avg. valuation in each category and round to 2 decimal places

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

--Return Avg valuation in each category and round to 2 decimal places
--Order the list from highest to lowest

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY 1
ORDER BY 2 DESC;

--Return name of each category and total number of companies that belong to it

SELECT category, COUNT(*)
FROM startups
GROUP BY category;

--Filter the result to only include categories that have more than 3  compnaies in them.

SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

--What is the average size of startup in each location

SELECT location, AVG(employees)
FROM startups
GROUP BY location;

--What is the average size of startup in each location, with average sizes above 500

SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) < 500;
