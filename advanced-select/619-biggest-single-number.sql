SELECT MAX(num) AS num
FROM ( SELECT num
        FROM MyNumbers
        GROUP BY num
        HAVING COUNT(num)=1 ) AS maxnum
;




#Wrap it with dual

select ( select num from my_numbers
group by num
having count(num) =1
order by num desc
limit 1) as num
from
dual
;
