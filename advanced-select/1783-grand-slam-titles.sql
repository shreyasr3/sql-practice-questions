WITH cte AS (
    SELECT wimbledon AS id FROM Championships
    UNION ALL
    SELECT fr_open AS id FROM Championships
    UNION ALL
    SELECT us_open AS id FROM Championships
    UNION ALL
    SELECT au_open AS id FROM Championships
)

SELECT P.player_id, P.player_name, COUNT(cte.id) AS grand_slams_count 
FROM Players AS P
JOIN cte
ON cte.id = P.player_id
GROUP BY P.player_id, P.player_name
;
