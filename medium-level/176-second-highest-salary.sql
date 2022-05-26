SELECT COALESCE(max(salary),NULL) as SecondHighestSalary
FROM employee
WHERE salary NOT IN (SELECT max(salary) FROM employee)
;

