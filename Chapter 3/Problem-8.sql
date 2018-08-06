/*
Explain why the following query isn’t a correct solution query for Exercise 7:
*/

SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
  LEFT OUTER JOIN Sales.Orders AS O
    ON O.custid = C.custid
WHERE O.orderdate = '20160212'
   OR O.orderid IS NULL;

/* The where command in this instance filters out all customers who did not make orders on June 6, 2016
or who did not make orders at all (where O.orderid has a value of null).
