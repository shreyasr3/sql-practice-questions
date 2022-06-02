SELECT CT.name
FROM city AS CT
JOIN country AS C
ON C.code = CT.countrycode
WHERE C.continent = 'Africa'
;
