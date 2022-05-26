SELECT DISTINCT city
FROM station
WHERE LOWER(city) NOT LIKE '[a,e,i,o,u]%'
OR LOWER(city) NOT LIKE '%[a,e,i,o,u]'
;

