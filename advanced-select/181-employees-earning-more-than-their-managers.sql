SELECT E.name AS Employee 
FROM Employee AS E
WHERE EXISTS (SELECT 1 FROM Employee
             WHERE E.managerId=id AND E.salary>salary)
;
             
##JOin IS FASTER

SELECT E.name AS Employee 
FROM Employee AS E
JOIN Employee AS M
ON E.managerid = M.Id
WHERE E.Salary > M.Salary
;
