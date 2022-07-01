SELECT DISTINCT num AS ConsecutiveNums
FROM
( SELECT num, (LEAD(num,1) OVER(ORDER BY id)) AS 'next', 
        (LAG(num,1) OVER(ORDER BY id)) AS 'prev'
  FROM Logs
) AS W
WHERE num = next AND 
    num = prev
;
