SELECT t1.name AS Employee 
FROM Employee t1
JOIN (SELECT id, name, salary from Employee) t2
on t1.managerID= t2.id
and t1.SALARY > t2.SALARY
