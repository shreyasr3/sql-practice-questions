SELECT ROUND( 100 * 
    SUM(order_date = customer_pref_delivery_date) / 
    COUNT(delivery_id)  , 2) AS immediate_percentage 
FROM Delivery
;

#Much faster solution

SELECT ROUND(100*AVG(order_date = customer_pref_delivery_date), 2) AS immediate_percentage
FROM Delivery;
