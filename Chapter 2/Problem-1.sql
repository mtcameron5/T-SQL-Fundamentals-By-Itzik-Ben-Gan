/* Write a query against the Sales.Orders table that returns orders placed in June 2015:

Image Tables involved: TSQLV4 database and the Sales.Orders table */

USE TSQLV4;

SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate >= '20150601' AND orderdate < '20150701'
