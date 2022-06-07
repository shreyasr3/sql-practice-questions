/* Brilliant Solution */

SELECT MIN(N.log_id) AS start_id, 
        MAX(N.log_id) AS end_id
FROM
    (
        SELECT log_id, 
            ROW_NUMBER() OVER(ORDER BY log_id) AS num
        FROM Logs) AS N
GROUP BY (N.log_id - N.num)
;

/* My Solution - Inspired by Solution of 72 */

SELECT S.log_id AS start_id, 
        MIN(E.log_id) AS end_id
FROM 
    (
        SELECT log_id FROM Logs 
        WHERE (log_id-1) NOT IN (SELECT log_id FROM Logs)) AS S,
	(
        SELECT log_id FROM Logs 
	    WHERE (log_id+1) NOT IN (SELECT log_id FROM Logs)) AS E

WHERE S.log_id <= E.log_id
group by S.log_id
;
