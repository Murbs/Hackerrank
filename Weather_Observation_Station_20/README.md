# HackerRank-Weather_Observation_Station_20

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

---

To calculate the median in T-SQL, you can use the percentile_disc function where the group clause is the data you're trying to find the median for (LAT_N). Since the dataset is already ordered by the group clause and we have no need to order or rank the data further, the OVER() partition can by left blank.

```SQL
SELECT DISTINCT CAST(PERCENTILE_DISC(0.5) WITHIN GROUP(ORDER BY LAT_N) OVER() AS DECIMAL(20,4)) FROM STATION
```