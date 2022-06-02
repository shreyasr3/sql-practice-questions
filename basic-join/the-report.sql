SELECT (CASE WHEN G.grade >= 8 THEN S.name ELSE NULL END), G.grade, S.marks
FROM students AS S,
    grades AS G
WHERE S.marks BETWEEN G.min_mark AND G.max_mark
ORDER BY G.grade DESC, S.name, S.marks
;

