SELECT

TOP 1 (Salary * Months), COUNT(employee_id)

FROM Employee

GROUP by salary, months

ORDER BY MAX(Salary * Months) DESC