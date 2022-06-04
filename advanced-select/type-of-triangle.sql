SELECT (CASE
    WHEN (A+B <= C OR B+C <= A OR A+C <= B) THEN 'Not A Triangle'
    WHEN (A = B AND B = C) THEN 'Equilateral'
    WHEN (A = B AND B != C) OR (B = C AND C != A) OR (A = C AND A != B) 
    THEN 'Isosceles'
    ELSE 'Scalene' END) AS type
FROM Triangles
;
