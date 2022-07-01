SELECT R.employee_id, R.name, 
        COUNT(*) AS reports_count, 
        ROUND(AVG(E.age)) AS average_age 
FROM Employees AS R
JOIN Employees AS E
ON R.employee_id = E.reports_to
GROUP BY 1
ORDER BY 1
;
