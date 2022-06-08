CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT DISTINCT E.salary
      FROM (
            SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS sal_rank
                FROM employee
            ) AS E
      WHERE E.sal_rank = @N
        
    );
END
;
