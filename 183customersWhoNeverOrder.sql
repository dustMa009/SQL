--Description: https://leetcode.com/problems/customers-who-never-order/
-- left outer join ... on
SELECT C.Name AS Customers
FROM Customers C LEFT OUTER JOIN Orders O
ON C.Id = O.CustomerId
WHERE O.Id IS NULL