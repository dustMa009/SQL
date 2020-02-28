--https://leetcode.com/problems/employee-bonus/
--my solution
SELECT E.name, B.bonus
FROM Employee E NATURAL LEFT OUTER JOIN Bonus B
WHERE B.bonus IS NULL OR B.bonus < 1000

--or, slightly faster
SELECT E.name, B.bonus
FROM Employee E LEFT JOIN Bonus B
ON E.empId = B.empId
WHERE B.bonus IS NULL OR B.bonus < 1000