SELECT STR(long_w,8,4)
FROM station
WHERE lat_n IN (
    SELECT MAX(lat_n) FROM station 
    WHERE lat_n < 137.2345
    )
;
