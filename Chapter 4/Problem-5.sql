/*
Write a query that returns for each customer all
orders placed on the customer’s last day of activity:
*/

USE TSQLV4

SELECT custid, orderid, orderdate, empid
FROM Sales.Orders AS O1
WHERE orderdate =
    (SELECT MAX(O2.orderdate)
    FROM Sales.Orders AS O2
    WHERE O2.custid = O1.custid)
ORDER BY custid;
