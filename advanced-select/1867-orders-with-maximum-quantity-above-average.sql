WITH cte AS ( 
    SELECT order_id, MAX(quantity) AS mxqt,
    MAX(AVG(quantity)) OVER() AS mxavg
    FROM OrdersDetails
    GROUP BY order_id
    )
SELECT order_id 
FROM cte
WHERE mxqt > mxavg
;

