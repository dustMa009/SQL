--181, straightfroward solution
SELECT E1.name AS Employee
FROM Employee E1, Employee E2
WHERE E1.ManagerId = E2.Id AND E1.Salary > E2.Salary