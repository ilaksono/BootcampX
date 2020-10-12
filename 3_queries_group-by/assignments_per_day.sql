SELECT day, COUNT(*) FROM assignments GROUP BY day ORDER BY day;
SELECT day, COUNT(*) FROM assignments GROUP BY day HAVING COUNT(*) >= 10 ORDER BY day;
