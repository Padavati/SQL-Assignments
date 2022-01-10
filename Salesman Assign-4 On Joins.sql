
-- // Regarding Joins concept

--write a SQL query to find the salesperson and customer who belongs to same city.
-- Return Salesman, cust_name and city
select Salesman.Name,Customers.CustName,Salesman.City from Salesman inner join Customers on Salesman.City=Customers.City 

--write a SQL query to find those orders where order amount exists between 500 and 2000.
-- Return ord_no, purch_amt, cust_name, city
select Orders.OrderNo,Orders.PurchAmt,Customers.CustName,Customers.City from Orders,Customers where Orders.CustomerID=Customers.CustomerID and Orders.PurchAmt Between 500 and 2000

--write a SQL query to find the salesperson(s) and the customer(s) he handle.
-- Return Customer Name, city, Salesman, commission
select Customers.CustName as 'Customer Name',Salesman.City as 'City',Salesman.Name as 'Salesman',Salesman.Commission as 'Commision' from Salesman inner join Customers on Salesman.SalesmanID=Customers.SalesmaniD

--write a SQL query to find those salespersons who received a commission from the company more than 12%.
-- Return Customer Name, customer city, Salesman, commission
select Customers.CustName as 'Customer Name',Customers.City as 'Customer City',Salesman.Name as 'Salesman',Salesman.Commission as 'Commission' from Customers inner join Salesman on Customers.salesmanID=Salesman.SalesmanID where Salesman.Commission >0.12

--write a SQL query to find those salespersons do not live in the same city where their customers live and
-- received a commission from the company more than 12%. Return Customer Name, customer city, Salesman, salesman city, commission
select Customers.CustName as 'Customer Name',Customers.City as 'Customer City', Salesman.Name as 'Salesman',Salesman.City as 'Salesman City',Salesman.Commission as 'Commission' from Customers inner join Salesman on Salesman.SalesmanID = Customers.SalesmanID where Salesman.Commission > 0.12