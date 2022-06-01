/*faster*/

SELECT user_id,
        MAX(time_stamp) AS last_stamp
    FROM logins
    WHERE YEAR(time_stamp) = 2020
    GROUP BY user_id
    ;


/*slow*/

SELECT user_id,
        MAX(time_stamp) AS last_stamp
    FROM logins
    WHERE time_stamp like '2020%'
    GROUP BY user_id
    ;
    
