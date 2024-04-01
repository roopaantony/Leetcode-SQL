--Solution 1--
SELECT MAX(SALARY) as SecondHighestSalary FROM Employee 
WHERE SALARY NOT IN (SELECT MAX(SALARY) FROM Employee)

--Solution 2--
SELECT
(SELECT DISTINCT SALARY 
from Employee ORDER BY SALARY DESC 
LIMIT 1 OFFSET 1) 
as SecondHighestSalary;
