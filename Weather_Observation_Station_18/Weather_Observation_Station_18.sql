SELECT CAST(ABS((MIN(LAT_N) - MAX(LAT_N)) + (MIN(LONG_W)-MAX(LONG_W))) AS DECIMAL (20,4)) FROM STATION