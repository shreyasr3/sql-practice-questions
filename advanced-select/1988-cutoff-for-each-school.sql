SELECT S.school_id, 
    COALESCE(MIN(E.score),-1) AS score
FROM Schools AS S
LEFT JOIN Exam AS E
    ON S.capacity >= E.student_count
GROUP BY S.school_id
;
