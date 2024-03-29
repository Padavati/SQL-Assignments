--write a SQL query to count number of orders by the combination of each order date and salesperson.
-- Return order date, salesperson id
select count(OrderDate) as 'OrdDate',count(SalesmanID)as 'SalesmanID'from orders

--write a SQL query to count number of salespeople who belongs to a city.
-- Return number of salespeople
select count(SalesmanID)as 'No.of salespeople'from Salesman

--write a SQL query to count all the orders generated on '2012-08-17'. Return number of orders.
select count(OrderDate) as 'No.Of Orders'from Orders where OrderDate='2012-08-17'

--write a SQL query to find the maximum order (purchase) amount generated by each salesperson.
-- Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). 
--Return salesperson id and maximum purchase amount
select SalesmanID,max(PurchAmt) as 'Max' from Orders group by SalesmanID having SalesmanID between 5003 and 5008
