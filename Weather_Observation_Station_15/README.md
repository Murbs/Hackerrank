# Hackerrank-Weather_Observation_Station_15

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

---

Ok so these questions largely repeat themselves and slightly build on what the previous question asks.. Basically the twist on this problem is in the WHERE clause. I opted to subquery the aggregated MAX value for LAT_N.

```SQL
SELECT CAST(LONG_W AS DECIMAL(16,4)) FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345)
```