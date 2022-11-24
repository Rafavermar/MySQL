SELECT sum(qtysold) total
FROM sales_ext s
INNER JOIN date_ext d
ON s.dateid = d.dateid
WHERE d.caldate = '2008-01-05';