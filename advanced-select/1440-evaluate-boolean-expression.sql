SELECT E.left_operand, E.operator, E.right_operand,
    (CASE WHEN E.operator = '>' AND V1.value > V2.value THEN 'true'
        WHEN  E.operator = '<' AND V1.value < V2.value THEN 'true'
        WHEN  E.operator = '=' AND V1.value = V2.value THEN 'true'
     ELSE 'false' END  ) AS value
FROM Expressions AS E
    JOIN Variables AS V1
    ON E.left_operand = V1.name
    JOIN Variables AS V2
    ON E.right_operand = V2.name
;
