WITH cte AS (
SELECT team_id, count(team_id) AS team_size
FROM employee
GROUP BY team_id
    )
    SELECT E.employee_id, C.team_size
    FROM cte AS C,
    employee AS E
    WHERE C.team_id = E.team_id
;


/* Slower but shorter code */

SELECT employee_id, 
    COUNT(team_id) OVER(PARTITION BY team_id) AS team_size
FROM Employee
;


/* With Left Join */

SELECT E.employee_id, 
    COUNT(T.employee_id) AS team_size 
FROM employee AS E
LEFT JOIN employee AS T 
ON E.team_id = T.team_id
group by E.employee_id
;

