/* This query is incorrect */

SELECT DISTINCT city 
FROM station  
WHERE LOWER(city) NOT LIKE '[aeiou]%' 
OR LOWER(city) NOT LIKE '%[aeiou]'
;


/* Correct SQL query */

SELECT DISTINCT city 
 FROM station 
 WHERE city RLIKE '^[^aeiouAEIOU].*[^aeiouAEIOU]$'
 ;
 
