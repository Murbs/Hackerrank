SELECT

TOP 1 (Salary * Months), COUNT(Employee_ID)

FROM Employee

GROUP by Salary, Months

ORDER BY MAX(Salary * Months) DESC
