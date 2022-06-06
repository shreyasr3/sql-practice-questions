SELECT DISTINCT B1.N,(CASE
            WHEN B1.P IS NULL THEN 'Root'
            WHEN B2.N IS NULL THEN 'Leaf'
            ELSE 'Inner' END 
            ) AS Node
FROM BST AS B1
LEFT JOIN BST AS B2
ON B1.N = B2.P
ORDER BY B1.N
;
