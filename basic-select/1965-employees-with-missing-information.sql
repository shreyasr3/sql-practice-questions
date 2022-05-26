SELECT employee_id FROM employees
WHERE employee_id NOT IN (select DISTINCT employee_id FROM salaries)
UNION
SELECT employee_id FROM salaries
WHERE employee_id NOT IN (SELECT DISTINCT employee_id FROM employees)
ORDER BY employee_id;

