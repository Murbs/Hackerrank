# HackerRank-Weather_Observation_Station_18

Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

---

Maybe I'll just throw all of these weather station problems into 1 folder when I get through them all.. To solve this problem you need to take the absolute values for both sets of coordinates and add them together to find the Manhattan distance (|x1 - x2| + |y1 - y2|) where x1/2 = a and c, y1/2 = b and d. As described in the problem, this is the absolute difference between our min and max latitude and longitude.


```SQL
SELECT CAST(ABS((MIN(LAT_N) - MAX(LAT_N)) + (MIN(LONG_W)-MAX(LONG_W))) AS DECIMAL (20,4)) FROM STATION
```