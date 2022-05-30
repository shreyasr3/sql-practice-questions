/*
Definition: The distance between two points measured along axes at right angles. 
In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
*/

#MSSQL

SELECT STR(((MAX(lat_n) - MIN(lat_n))+(MAX(long_w) - MIN(long_w))),8,4)
FROM station
;
