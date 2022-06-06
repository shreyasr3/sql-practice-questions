SELECT DISTINCT C.name AS country
FROM Country AS C
JOIN Person AS P
ON SUBSTRING(P.phone_number,1,3) = C.country_code
JOIN CAlls AS Cl
ON P.id = Cl.caller_id OR
    P.id = Cl.callee_id
GROUP BY C.name
HAVING AVG(Cl.duration) > (SELECT AVG(duration) FROM calls)
;

