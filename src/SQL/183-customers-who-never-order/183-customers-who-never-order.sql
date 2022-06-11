# Write your MySQL query statement below
SELECT customers.name AS Customers FROM Customers WHERE Customers.id NOT In(SELECT customerid FROM Orders)