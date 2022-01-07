--write a SQL query to calculate average purchase amount of all orders. Return average purchase amount.
select avg(PurchAmt) as 'Avg PurchAmt' from Orders

--write a SQL query to count the number of unique salespeople. Return number of salespeople.
select Distinct count(*) as 'unique Salesman' from Salesman
  
--write a SQL query to count the number of customers. Return number of customers.
select count(*) as 'No.Of Customers'from Customers

--write a SQL query to find the maximum purchase amount
select max(PurchAmt)as 'Max PurchAmt'from Orders

--write a SQL query to find the highest grade of the customers for each of the city. Return city, maximum grade.
select City,max(Grade) as 'High Grade'from Customers group by City

--write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount
select CustomerId,max(PurchAmt) as 'High PurchAmt' from Orders group by CustomerID