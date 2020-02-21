--LeetCode Database Exercise 176, My solution, 239ms
SELECT MAX(A.Salary) as SecondHighestSalary
FROM (SELECT E1.Salary
     FROM Employee as E1, Employee as E2
     WHERE E1.Salary < E2.Salary) as A;
     
--another solution using ORDER BY AND LIMIT OFFSET, IFNULL to test whether or not second highest salary exists
SELECT
    IFNULL(
      (SELECT DISTINCT Salary
       FROM Employee
       ORDER BY Salary DESC
        LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary

