SELECT STR(SUM(lat_n),8,2) AS lat, 
STR(SUM(long_w),8,2) AS lon
FROM station
;
