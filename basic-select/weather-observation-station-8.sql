SELECT DISTINCT city
FROM station
WHERE LOWER(city) like '[a,e,i,o,u]%[a,e,i,o,u]';
