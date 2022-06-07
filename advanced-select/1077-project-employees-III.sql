SELECT R.project_id, R.employee_id
FROM
    (
        SELECT P.project_id, P.employee_id,
        RANK() OVER(PARTITION BY P.project_id ORDER BY E.experience_years DESC) 
            AS num_exp
        FROM Project AS P 
        JOIN Employee AS E
        ON P.employee_id = E.employee_id
    ) AS R
WHERE R.num_exp = 1
; 
