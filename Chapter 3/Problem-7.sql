/*
Write a query that returns all customers in the output,
but matches them with their respective orders only if they
were placed on February 12, 2016:
*/

USE TSQLV4

SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
    LEFT OUTER JOIN Sales.Orders AS O
        ON O.custid = C.custid
        AND O.orderdate = '20160212';
