UPDATE salary
SET
    sex = CASE sex
        WHEN 'm' THEN 'f'
        ELSE 'm'
    END;


/* Alternate Solution */

UPDATE salary SET sex = CHAR(ASCII('m') + ASCII('f')- ASCII(sex));
