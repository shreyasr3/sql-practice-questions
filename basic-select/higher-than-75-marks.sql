SELECT name
FROM students
WHERE marks > 75
ORDER BY REVERSE(SUBSTR(REVERSE(name), 1, 3)), id
;


