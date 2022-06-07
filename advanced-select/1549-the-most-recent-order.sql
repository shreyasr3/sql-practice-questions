SELECT R.product_name, R.product_id, R.order_id, R.order_date
FROM (
        SELECT P.product_id, P.product_name, O.order_id, O.order_date,
        RANK() OVER(PARTITION BY P.product_name ORDER BY O.order_date DESC) 
            AS order_rank
        FROM Products AS P
        JOIN Orders AS O
        ON P.product_id = O.product_id
    ) AS R
WHERE R.order_rank = 1
ORDER BY R.product_name, R.product_id, R.order_id
;
