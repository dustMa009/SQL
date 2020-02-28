--Description https://leetcode.com/problems/delete-duplicate-emails/
--my solution, delete from original table!
DELETE FROM Person WHERE Id NOT IN
(
SELECT MIN(A.Id) AS Id
FROM (SELECT * FROM Person) AS A
GROUP BY A.Email)

--very clean solution
DELETE p1 FROM Person P1, Person P2
WHERE p1.email = p2.email AND p1.Id > p2.Id