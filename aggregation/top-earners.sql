WITH cte AS (
        SELECT salary*months AS monthly_salary
        FROM employee
        )
    SELECT TOP 1 monthly_salary,COUNT(monthly_salary)
    FROM cte
    GROUP BY monthly_salary
    ORDER BY monthly_salary DESC
    ;
 

/* Without CTE */

SELECT TOP 1 months*salary, COUNT(*)
    FROM employee
    GROUP BY months*salary
    ORDER BY months*salary DESC
    ;
