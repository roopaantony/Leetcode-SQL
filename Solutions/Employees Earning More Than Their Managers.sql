SELECT employee.name AS Employee 
FROM Employee manager
JOIN Employee employee
on manager.id= employee.managerID
and manager.SALARY < employee.SALARY
