SELECT P1.id AS p1, P2.id AS p2,
(ABS(P1.x_value - P2.x_value)*ABS(P1.y_value - P2.y_value)) AS area
FROM Points AS P1
Join Points AS P2
ON P1.id < P2.id
HAVING area > 0
ORDER BY 3 DESC,1,2
;



#This is slower (But cuts the calculation time)

SELECT P1.id AS p1, P2.id AS p2,
(ABS(P1.x_value - P2.x_value)*ABS(P1.y_value - P2.y_value)) AS area
FROM Points AS P1
Join Points AS P2
ON P1.id < P2.id AND
    P1.x_value != P2.x_value AND
    P1.y_value != P2.y_value
ORDER BY 3 DESC,1,2
;


