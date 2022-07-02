SELECT P.product_name, P.product_id, O.order_id, O.order_date
FROM Products AS P
JOIN Orders AS O
ON O.product_id = P.product_id
WHERE (P.product_id, O.order_date) IN (SELECT product_id, MAX(order_date) AS order_date 
                                       FROM Orders 
                                      GROUP BY product_id)
ORDER BY 1,2,3
;
