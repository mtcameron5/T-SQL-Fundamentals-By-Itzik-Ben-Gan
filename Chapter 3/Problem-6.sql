/*
Return customers with orders placed on February 12, 2016, along with their orders
*/

USE TSQLV4

SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
    LEFT OUTER JOIN Sales.Orders AS O
        ON O.custid = C.custid
WHERE O.orderdate = '20160212';
