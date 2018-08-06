/*
Write a query that generates five copies of each employee row:
*/

USE TSQLV4

SELECT E.empid, E.firstname, E.lastname, A.n
FROM HR.Employees AS E CROSS JOIN dbo.Nums AS A
WHERE A.n <= 5
ORDER BY n, empid;
