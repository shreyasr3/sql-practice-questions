SELECT DISTINCT P.product_id, COALESCE(Sub.new_price, 10) AS price
FROM Products AS P
LEFT JOIN (SELECT *  FROM Products WHERE
            (product_id,change_date) IN (SELECT product_id, MAX(change_date)
                                        FROM Products WHERE change_date <= '2019-08-16'
                                        GROUP BY product_id)
           ) AS Sub
ON P.product_id = Sub.product_id
;

