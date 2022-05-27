SELECT P.firstName, P.lastName, A.city, A.state
From person AS P
LEFT JOIN address AS A
ON P.personId = A.personId
;
