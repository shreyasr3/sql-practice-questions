SELECT DISTINCT L.page_id AS recommended_page
FROM ( 
    SELECT (CASE
            WHEN user1_id = 1 THEN user2_id
            WHEN user2_id = 1 THEN user1_id
            END ) AS user_id
        FROM Friendship
     ) AS F
JOIN Likes AS L
ON F.user_id = L.user_id
WHERE page_id NOT IN (SELECT page_id FROM Likes WHERE user_id = 1)
;
