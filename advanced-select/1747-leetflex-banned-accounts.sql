SELECT DISTINCT A.account_id
FROM LogInfo AS A
JOIN LogInfo AS B
ON A.account_id=B.account_id AND A.ip_address != B.ip_address
AND (B.login BETWEEN A.login AND A.logout)
;




## WithoutJoin

select account_id
from loginfo a
where exists (select 1 from loginfo 
              where a.account_id = account_id 
              and a.login between login and logout and a.ip_address != ip_address) 
group by account_id
