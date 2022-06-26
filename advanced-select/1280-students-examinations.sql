SELECT St.student_id, St.student_name, Sb.subject_name, 
        COUNT(E.subject_name) AS attended_exams
    FROM Students As St
        JOIN Subjects AS Sb
        LEFT JOIN Examinations AS E
        ON E.student_id = St.student_id AND E.subject_name = Sb.subject_name
    GROUP BY St.student_id, Sb.subject_name
    ORDER BY student_id, subject_name
    ;
    
    

