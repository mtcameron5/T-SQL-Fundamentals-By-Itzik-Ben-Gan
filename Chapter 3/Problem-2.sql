/*
Explain what’s wrong in the following query, and provide a correct alternative:
*/

SELECT Customers.custid, Customers.companyname, Orders.orderid, Orders.orderdate
FROM Sales.Customers AS C
  INNER JOIN Sales.Orders AS O
    ON Customers.custid = Orders.custid;

/* The Customer and Sales tables use the alieses O and C, yet these are not used
when selecting variables or in the ON statement. To fix the problem, use the new
alieses for the select and on commands as so:
*/

SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
  INNER JOIN Sales.Orders AS O
    ON C.custid = O.custid;
