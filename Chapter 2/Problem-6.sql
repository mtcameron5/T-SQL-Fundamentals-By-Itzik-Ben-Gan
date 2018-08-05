/*
Explain the difference between the following two queries:
*/

-- Query 1
SELECT empid, COUNT(*) AS numorders
FROM Sales.Orders
WHERE orderdate < '20160501'
GROUP BY empid;

-- Query 2
SELECT empid, COUNT(*) AS numorders
FROM Sales.Orders
GROUP BY empid
HAVING MAX(orderdate) < '20160501';


-- Query 1 selects a count of every order tne employee dealt with all before 5/1/2016
-- Query 2 discards the employee orders if any orders are made after 5/1/2016
