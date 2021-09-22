# HackerRank-Occupations

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

The first column is an alphabetically ordered list of Doctor names.
The second column is an alphabetically ordered list of Professor names.
The third column is an alphabetically ordered list of Singer names.
The fourth column is an alphabetically ordered list of Actor names.
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.

---

To return row data as a column, I opted to pivot the data through a common table expression. We partition the data to assign ranks to names in alphabetical order and assign null to any leftover fields. Since you can't aggregate a recursive CTE, we establish the data first and aggregate it outside of the CTE query where we can then group by rank.

```SQL
WITH CTE AS
(
    SELECT RANK() OVER (PARTITION BY OCCUPATION ORDER BY NAME ASC) RANK,
        CASE WHEN OCCUPATION = 'DOCTOR' THEN NAME ELSE NULL END AS DOCTOR,
        CASE WHEN OCCUPATION = 'PROFESSOR' THEN NAME ELSE NULL END AS PROFESSOR,
        CASE WHEN OCCUPATION = 'SINGER' THEN NAME ELSE NULL END AS SINGER,
        CASE WHEN OCCUPATION = 'ACTOR' THEN NAME ELSE NULL END AS ACTOR
    FROM OCCUPATIONS
)
SELECT MIN(DOCTOR), MIN(PROFESSOR), MIN(SINGER), MIN(ACTOR) FROM CTE GROUP BY RANK
```

Also tried solving this with the PIVOT function, still assigning a rank to the original table and sorting the data before aggregating/pivoting to the final outcome.

```SQL
SELECT [DOCTOR], [PROFESSOR], [SINGER], [ACTOR] FROM
(
    SELECT RANK() OVER (PARTITION BY OCCUPATION ORDER BY NAME ASC) RANK, * FROM OCCUPATIONS
) AS tmp

PIVOT
(
    MIN(NAME) FOR OCCUPATION IN ([DOCTOR], [PROFESSOR], [SINGER], [ACTOR])
) AS pivot_data
```