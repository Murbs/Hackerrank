# Hackerrank-Population_Census

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

---

Since the matching key is already provided in the problem statement, all that needs to be done is take the sum and build the WHERE clause. Noting both tables have a population row, we must also specify that population is being summed in the city table.

```SQL
SELECT SUM(CITY.POPULATION) FROM CITY
INNER JOIN COUNTRY ON CITY.[COUNTRYCODE] = COUNTRY.[CODE]
WHERE CONTINENT IN ('ASIA')
```