SELECT R.customer_id, R.product_id, R.product_name
FROM (
        SELECT O.customer_id, P.product_id, P.product_name,
        RANK() OVER (PARTITION BY O.customer_id ORDER BY COUNT(O.order_id) DESC)
            AS order_rank
        FROM Products AS P
        JOIN Orders AS O
        ON P.product_id = O.product_id
        GROUP BY O.customer_id, P.product_id
    ) AS R
WHERE R.order_rank = 1
;
