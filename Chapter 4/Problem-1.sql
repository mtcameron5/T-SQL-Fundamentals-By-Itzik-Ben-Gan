/* Write a query that returns all orders placed
on the last day of activity that can be found in
the Orders table:
*/

USE TSQLV4


SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate =
    (SELECT MAX(O.orderdate) FROM Sales.Orders AS O);
