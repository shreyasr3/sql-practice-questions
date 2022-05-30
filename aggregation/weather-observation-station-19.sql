SELECT STR(SQRT(POWER((Max(lat_n)-MIN(lat_n)),2)+POWER((Max(long_w)-MIN(long_w)),2)),8,4)
FROM station
;

