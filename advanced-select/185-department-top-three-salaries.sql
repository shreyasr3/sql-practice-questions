WITH cte AS (
    select name, salary, departmentId, 
        DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
)

SELECT D.name AS Department, E.name AS Employee,
        E.salary
FROM cte AS E
JOIN Department AS D
ON D.id = E.departmentId 
WHERE E.rnk <= 3
;
