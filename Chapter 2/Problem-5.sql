/*
To check the validity of the data, write a query against the HR.Employees table that
returns employees with a last name that starts with a lowercase English letter in the range a through z.
Remember that the collation of the sample database is case insensitive (Latin1_General_CI_AS):
*/

USE TSQLV4

SELECT empid, lastname
FROM HR.Employees
WHERE lastname COLLATE Latin1_General_CS_AS LIKE N'[abcdefghijklmnopqrstuvxyz]%';
