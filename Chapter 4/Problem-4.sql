/* Write a query that returns countries where there are customers but not employees: */

USE TSQLV4

SELECT DISTINCT country
FROM Sales.Customers
WHERE country NOT IN
    (SELECT E.country FROM HR.Employees AS E);
