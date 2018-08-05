/* USE TSQLV4;

Write a query against the Sales.Orders table that returns orders placed on the last day of the month:

Tables involved: TSQLV4 database and the Sales.Orders table */

SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate = EOMONTH(orderdate);
