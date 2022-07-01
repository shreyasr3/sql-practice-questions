SELECT C.country_name, (CASE
        WHEN AVG(W.weather_state) <= 15 THEN "Cold"
        WHEN AVG(W.weather_state) >= 25 THEN "Hot"
        ELSE "Warm" END) AS  weather_type
FROM Countries AS C
JOIN Weather AS W
ON C.country_id = W.country_id
WHERE W.day BETWEEN '2019-11-01' AND '2019-11-30'
GROUP BY C.country_name
;
