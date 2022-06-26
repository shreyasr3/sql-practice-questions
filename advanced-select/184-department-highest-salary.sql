SELECT D.name AS Department, 
        E.name AS Employee,
        E.salary
FROM Employee AS E
    JOIN Department AS D
    ON E.departmentId = D.id
WHERE (E.departmentId, salary) IN 
                (
                    SELECT departmentId, Max(salary)
                    FROM Employee
                    GROUP BY departmentId
                )
;

