SELECT t2.name AS Employee 
FROM Employee t1
JOIN Employee t2
on t1.id= t2.managerID
and t1.SALARY < t2.SALARY
