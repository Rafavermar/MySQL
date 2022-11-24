; WITH Q AS
(
SELECT TOP 3 buyerid, sum(qtysold) total_quantity
FROM sales_ext
GROUP BY buyerid
ORDER BY total_quantity DESC
)
SELECT firstname, lastname, total_quantity
FROM Q INNER JOIN users_ext u ON Q.buyerid = u.userid
ORDER BY Q.total_quantity DESC;