SELECT
    Doctor,
    Professor,
    Singer,
    Actor
FROM (
    SELECT
        name_num,
        MAX(CASE WHEN occupation = 'Doctor' THEN name END) AS Doctor,
        MAX(CASE WHEN occupation = 'Professor' THEN name END) AS Professor,
        MAX(CASE WHEN occupation = 'Singer' THEN name END) AS Singer,
        MAX(CASE WHEN occupation = 'Actor' THEN name END) AS Actor
    FROM (
            SELECT
                occupation, name,
                ROW_NUMBER() OVER(PARTITION BY occupation ORDER BY name) AS name_num
            FROM Occupations
         ) AS name_number
         
    GROUP BY name_num
    
    ) AS names
    ;
