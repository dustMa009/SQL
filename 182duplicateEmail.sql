--Leetcode 182
SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1