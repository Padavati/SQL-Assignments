-- Create HRDB DataBase
create database HRDB

--Create Table as Regions
create table Regions(RegionID int Primary Key, RegionaName varchar(25))

--create Table as Countries
create table Countries(CountryID char(2) Primary Key,CountryName varchar(40),RegionID int References Regions(RegionID))

--Create Table as Locations
create table Locations(LocationID int Primary Key,StreetAddress varchar(25),PostalCode varchar(12),
City varchar(30),StateProvince varchar(12),CountryID char(2) References Countries(CountryID))

--Create Table as Departments
create table Departments(DeptID int Primary Key,DeptName varchar(30),ManagerID int,
LocationID int References Locations(LocationID))

--Create Table as Jobs
create table Jobs(JobID varchar(10) Primary Key,JobTitle varchar(35),MinSalary int,MaxSalary int)

--Create Table as JobHistory
create table JobHistory(EmpID int Primary Key,StartDate Date,EndDate Date,JobID varchar(10) References Jobs(JobID),
DeptID int References Departments(DeptID))

--Create Table as Employees
create table Employees(EmpID int References JobHistory(EmpID),FirstName varchar(20),LastName varchar(25),Email varchar(25),
PhnNum varchar(20),HireDate Date,JobID varchar(10) References Jobs(JobID),Salary int,CommissionPCT int,ManagerID int,
DeptID int References Departments(DeptID))

--Create Table as JobGrades
create table JobGrades(GradeLevel varchar(2),LowestSal int,HighestSal int)