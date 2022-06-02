SELECT C.continent, FLOOR(AVG(CT.population))
FROM city AS CT
JOIN country AS C
ON CT.countrycode = C.code
GROUP BY C.continent
;

