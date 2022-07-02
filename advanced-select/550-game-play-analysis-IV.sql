SELECT ROUND(COUNT(P2.player_id) / COUNT(P1.player_id), 2) AS fraction
FROM (
    SELECT player_id, MIN(event_date) AS min_dt 
    FROM Activity GROUP BY player_id) AS P1 
    LEFT JOIN Activity AS P2
    ON P1.player_id = P2.player_id AND 
    ABS(P1.min_dt - P2.event_date) = 1
;

