# HackerRank-Top_Earners

We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.

---

To solve this I need to return the highest value calculated in earnings, as well as the number of employees who have earned this amount. I can do so by aggregating together the earnings as detailed in the problem and taking a count of the unique employee ids for this amount. Afterwards, we can order by the largest amount descending and return the first record using TOP.

```SQL
SELECT

TOP 1 (Salary * Months), COUNT(Employee_ID)

FROM Employee

GROUP by Salary, Months

ORDER BY MAX(Salary * Months) DESC
```
