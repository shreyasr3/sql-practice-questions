(
SELECT U.name AS results
FROM Users AS U
JOIN MovieRating AS R
ON U.user_id = R.user_id
GROUP BY U.name
ORDER BY COUNT(R.movie_id) DESC, U.name
LIMIT 1
)
UNION
(
SELECT M.title AS results
FROM Movies AS M
JOIN MovieRating AS R
ON M.movie_id = R.movie_id
WHERE R.created_at LIKE '2020-02%'
GROUP BY M.title
ORDER BY AVG(R.rating) DESC, M.title
LIMIT 1
)
;
