-- Created a CTE which has all the requester_ids and accepter_ids together
--From the cte we count the requester ids and group by requester_id and get the first id

WITH CTE AS (
    SELECT requester_id
    FROM RequestAccepted

    UNION ALL

    SELECT accepter_id
    FROM RequestAccepted
)

SELECT requester_id as id, COUNT(requester_id) AS num 
FROM CTE
GROUP BY requester_id
ORDER BY num DESC LIMIT 1;