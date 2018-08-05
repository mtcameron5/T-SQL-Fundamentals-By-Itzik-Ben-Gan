/*
Write a query against the Sales.Orders table that returns
the three shipped-to countries with the highest average freight in 2015:
*/

USE TSQLV4

SELECT TOP (3) shipcountry, AVG(freight) AS avgfreight
FROM Sales.Orders
WHERE orderdate >= '20150101' AND orderdate < '20160101'
GROUP BY shipcountry
ORDER BY avgfreight DESC;
