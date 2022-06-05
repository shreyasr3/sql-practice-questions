SELECT U.user_id AS buyer_id, U.join_date, 
        COALESCE(COUNT(O.order_date),0) AS orders_in_2019 
FROM Orders AS O
    RIGHT JOIN Users AS U
    ON U.user_id = O.buyer_id AND 
        YEAR(O.order_date) = 2019
GROUP BY U.user_id
;
