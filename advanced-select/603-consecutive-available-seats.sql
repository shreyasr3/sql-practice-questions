SELECT DISTINCT C1.seat_id
FROM Cinema AS C1
JOIN Cinema AS C2
    ON abs(C1.seat_id - C2.seat_id) = 1 AND
    C1.free = 1 and C2.free = 1
ORDER BY 1
;
