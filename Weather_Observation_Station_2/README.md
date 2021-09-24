# HackerRank-Weather_Observation_Station_2

Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.

---

Trying to round the sum in this problem produces some wacky values, to get around this I cast the results as a decimal(scale 2). Since I don't really know what values are in the table being checked, I intentionally use a wide precision.

```SQL
SELECT CAST(SUM(LAT_N) AS DECIMAL(12,2)), CAST(SUM(LONG_W) AS DECIMAL(12,2)) FROM STATION
```