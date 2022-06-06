SELECT C.company_code, C.founder,
       COUNT(DISTINCT L.lead_manager_code),
       COUNT(DISTINCT S.senior_manager_code),
       COUNT(DISTINCT M.manager_code),
       COUNT(DISTINCT E.employee_code)
FROM Company as C 
    INNER JOIN Lead_Manager as L
    ON C.company_code = L.company_code
    INNER JOIN Senior_Manager as S
    ON L.lead_manager_code = S.lead_manager_code
    INNER JOIN Manager as M 
    ON M.senior_manager_code = S.senior_manager_code
    INNER JOIN Employee as E
    ON E.manager_code = M.manager_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code
;
