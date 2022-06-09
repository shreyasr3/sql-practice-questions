/* Have to tune this query */

SELECT  R.user1_id, R.user2_id
FROM (
        SELECT U.user_id AS user1_id, F.user_id AS user2_id,
                GROUP_CONCAT(DISTINCT U.follower_id ORDER BY U.follower_id) 
                    AS followers1,
                GROUP_CONCAT(DISTINCT F.follower_id ORDER BY F.follower_id) 
                    AS followers2
        FROM relations AS U,
            relations AS F
            WHERE U.user_id < F.user_id
        GROUP BY U.user_id, F.user_id
    ) AS R
WHERE R.followers1 = R.followers2    
    ;

/*MySQL*/
WITH cte AS (
    SELECT U.user_id AS user1_id, 
            F.user_id AS user2_id, COUNT(*) as follower_count
    FROM relations AS U 
        JOIN relations AS F
        ON U.user_id < F.user_id
            AND U.follower_id = F.follower_id 
    GROUP BY U.user_id, F.user_id
    )

SELECT user1_id, user2_id
FROM cte
WHERE follower_count = (
                        SELECT MAX(follower_count) FROM cte
                        )
;
