USE TSQLV4

SELECT custid, ordermonth, qty,
    (SELECT SUM(O2.qty)
    FROM Sales.CustOrders AS O2
    WHERE O2.custid = O1.custid
        AND O2.ordermonth <= O1.ordermonth) AS runqty
FROM Sales.CustOrders AS O1
ORDER BY custid, ordermonth;
