; WITH I AS
(
SELECT eventid, sum(pricepaid) total_price
FROM sales_ext
GROUP BY eventid
)
, Q AS
(
SELECT eventid, total_price, NTILE(1000) OVER (ORDER BY total_price DESC) AS percentile
FROM I
)
SELECT eventname, total_price
FROM Q INNER JOIN event_ext E ON Q.eventid = E.eventid
WHERE percentile = 1
ORDER BY total_price DESC ;