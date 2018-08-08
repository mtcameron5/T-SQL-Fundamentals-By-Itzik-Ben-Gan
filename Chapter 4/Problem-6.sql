/* Write a query that returns customers who placed orders in 2015 but not in 2016: */

USE TSQLV4 

SELECT custid, companyname
FROM Sales.Customers AS C
WHERE EXISTS
  (SELECT *
  FROM Sales.Orders AS O
  WHERE O.custid = C.custid)
    AND O.orderdate >= '20150101'
    AND O.orderdate < '20160101')
  AND NOT EXISTS
    (SELECT *
    FROM Sales.Orders AS O
    WHERE O.custid = C.custid
      AND O.orderdate >= '20160101'
      AND O.orderdate < '20170101');
