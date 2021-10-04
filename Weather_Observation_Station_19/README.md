# HackerRank-Weather_Observation_Station_18

Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2, format your answer to display 4 decimal digits.

---

To calculate 2 dimensional Euclidean distance we add the squares of (A - B) and (C - D) together, then take the square root of that sum.

```SQL
SELECT CAST((SQRT(POWER(MIN(LAT_N) - MAX(LAT_N),2) + POWER(MIN(LONG_W) - MAX(LONG_W),2)))AS DECIMAL(20,4)) FROM STATION
```