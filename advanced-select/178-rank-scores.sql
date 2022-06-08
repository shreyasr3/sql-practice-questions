SELECT score,
    DENSE_RANK() OVER(ORDER BY score DESC) AS rank
FROM Scores
;


/* MySQL Syntax */

SELECT score,
    DENSE_RANK() OVER W AS 'rank'
FROM Scores
WINDOW W AS (ORDER BY score DESC)
;

