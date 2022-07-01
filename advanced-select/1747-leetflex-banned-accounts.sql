SELECT DISTINCT A.account_id
FROM LogInfo AS A
JOIN LogInfo AS B
ON A.account_id=B.account_id AND A.ip_address != B.ip_address
AND (B.login BETWEEN A.login AND A.logout)
;
