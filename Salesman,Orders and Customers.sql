--Create SalesmanDB
create database SalesDB

--Create Salesman Table
create table Salesman(SalesmanID int,Name varchar(100),City varchar(100),Commission float)

--Insert Rows In Salesman Table
insert into Salesman values(5001,'James Hoog','New York',0.15)
insert into Salesman values(5002,'Nail Knite','Paris',0.13)
insert into Salesman values(5005,'Pit Alex','London',0.11)
insert into Salesman values(5006,'Mc Lyon','Paris',0.14)
insert into Salesman values(5007,'Paul Adam','Rome',0.13)
insert into Salesman values(5003,'Lauson Hen','San Jose',0.12)

--Create Orders Table
create table Orders(OrderNo int,PurchAmt float,OrderDate varchar(100),CustomerID int,SalesmanID int)

--Insert Rows In Orders Table
insert into Orders values(70001,150.5,'2012-10-05',3005,5002)
insert into Orders values(70009,270.65,'2012-09-10',3001,5005)
insert into Orders values(70002,65.26,'2012-10-05',3002,5001)
insert into Orders values(70004,110.5,'2012-08-17',3009,5003)
insert into Orders values(70007,948.5,'2012-09-10',3005,5002)
insert into Orders values(70005,2400.6,'2012-07-27',3007,5001)
insert into Orders values(70008,5760,'2012-09-10',3002,5001)
insert into Orders values(70010,1983.43,'2012-10-10',3004,5006)
insert into Orders values(70003,2480.4,'2012-10-10',3009,5003)
insert into Orders values(70012,250.45,'2012-06-27',3008,5002)
insert into Orders values(70011,75.29,'2012-08-17',3003,5007)
insert into Orders values(70013,3045.6,'2012-04-25',3002,5001)

--Create Customers Table
create table Customers(CustomerID int,CustName varchar(100),City varchar(100),Grade int,SalesmanID int)

--Insert Rows in Customers
insert into Customers values(3002,'Nick Rimando','New York',100,5001)
insert into Customers values(3007,'Brad Davis','New York',200,5001)
insert into Customers values(3005,'Graham Zusi','California',200,5002)
insert into Customers values(3008,'Julian Green','London',300,5002)
insert into Customers values(3004,'Fabian Johnson','Paris',300,5006)
insert into Customers values(3009,'Geoff Cameron','Berlin',100,5003)
insert into Customers values(3003,'Jozy Altidor','Moscow',200,5007)
insert into Customers values(3001,'Brad Guzan','London',Null,5005)


--1.Write a SQL statement to display all the information of all salesmen
select*from Salesman

--2.Write a SQL statement to display specific columns like name and
-- commission for all the salesmen
select Name,Commission from Salesman

--3.Write a query to display the columns in a specific order like order date, salesman id, order number and
-- purchase amount from for all the orders
select OrderDate,SalesmanID,OrderNo,PurchAmt from Orders

--4.write a SQL query to find the salespeople who lives in the City of 'Paris'.
-- Return salesperson's name, city.
select Name,City from Salesman where City='Paris'

--5.write a SQL query to find those customers whose grade is 200.
-- Return customer_id, cust_name, city, grade, salesman_id
select CustomerID,CustName,City,Grade,SalesmanID from Customers where Grade=200

--6.write a SQL query to find the orders, which are delivered by a salesperson of ID. 5001.
-- Return ord_no, ord_date, purch_amt
select OrderNo,OrderDate,PurchAmt from Orders where SalesmanID=5001

