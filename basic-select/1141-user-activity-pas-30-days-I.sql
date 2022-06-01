SELECT activity_date AS day, 
        COUNT(DISTINCT user_id) AS active_users
    FROM Activity
    WHERE DATEDIFF(CAST('2019-07-27' AS date), activity_date) BETWEEN 0 AND 29
    GROUP BY activity_date
    HAVING COUNT(DISTINCT user_id) > 0
    ;
