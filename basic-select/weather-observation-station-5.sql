/* MS SQL */

SELECT TOP 1 city, LEN(city) FROM station 
ORDER BY len(city) ASC, city ASC
UNION
SELECT TOP 1 city, LEN(city) FROM station
ORDER BY len(city) DESC, city ASC; 
