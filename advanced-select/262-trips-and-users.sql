SELECT T.request_at AS "Day",
        ROUND(SUM(T.status != 'completed')/COUNT(*) ,2) AS "Cancellation Rate"
FROM Trips AS T
WHERE T.client_id IN (SELECT users_id FROM Users WHERE banned='No') AND
    T.driver_id IN (SELECT users_id FROM Users WHERE banned='No') AND
    T.request_at BETWEEN "2013-10-01" and "2013-10-03"
GROUP BY T.request_at
;

