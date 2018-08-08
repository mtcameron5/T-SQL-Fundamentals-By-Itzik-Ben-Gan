/*
Write a query that returns customers who ordered product 12
*/

USE TSQLV4

SELECT custid, companyname,
FROM Sales.Customers AS C
WHERE EXISTS
    (SELECT *
    FROM Sales.Orders AS O
    WHERE O.custid = C.custid
        AND EXISTS
            (SELECT *
            FROM Sales.OrderDetails AS OD
            WHERE OD.orderid = O.orderid
                AND OD.ProductID = 12));
