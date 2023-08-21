-- Used subquery which would find all the sales_id which has company name as RED
-- Then used NOT IN to find all the sales_id which are not in the subquery

SELECT name 
FROM SalesPerson
WHERE sales_id NOT IN (SELECT sales_id 
                            FROM Orders o 
                            LEFT JOIN Company c ON o.com_id = c.com_id
                            WHERE c.name = 'RED');