SELECT customer_id, count(visit_id) AS count_no_trans
FROM visits
WHERE visit_id NOT IN (SELECT DISTINCT visit_id FROM transactions)
GROUP BY customer_id
;



/*With JOin query is faster than sub-query*/

SELECT customer_id, COUNT(v.visit_id) AS count_no_trans 
FROM visits AS v
NATURAL LEFT JOIN transactions AS t
WHERE t.visit_id IS NULL
GROUP BY customer_id
;
