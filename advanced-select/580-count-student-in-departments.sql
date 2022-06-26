SELECT D.dept_name, COALESCE(COUNT(S.student_id),0) AS student_number
FROM Student AS S
RIGHT JOIN Department AS D 
ON D.dept_id = S.dept_id
GROUP BY D.dept_name
ORDER BY 2 DESC, 1 ASC
;
