SELECT E2.name as Employee
FROM Employee E1, Employee E2
WHERE E1.id = E2.managerId
AND E1.salary < E2.salary
