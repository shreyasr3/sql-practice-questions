WITH cte AS (
    SELECT IF(from_id < to_id, from_id, to_id) AS from_id,
        IF(from_id < to_id, to_id, from_id) AS to_id, 
        duration
    FROM Calls
)

SELECT from_id AS person1, to_id AS person2,
    COUNT(*) AS call_count, 
    SUM(duration) AS total_duration
FROM cte
GROUP BY from_id, to_id
;





/* Another Solution */

SELECT 
    LEAST(from_id, to_id) AS person1,
    GREATEST(from_id, to_id) AS person2,
    COUNT(1) AS call_count,
    SUM(duration) AS total_duration
FROM Calls
GROUP BY 1, 2
;

