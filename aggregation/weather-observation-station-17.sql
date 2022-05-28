SELECT STR(long_w,7,4)
FROM station
WHERE lat_n = ( 
              SELECT MIN(lat_n) 
              FROM station 
              WHERE lat_n > 38.7780
              )
;
