-- create database
CREATE DATABASE company;
-- use it to avoid errors
USE company;
-- create tables with some constraints
CREATE TABLE Employees(
EmployeeId INT PRIMARY KEY UNIQUE,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DepartmentId int,
HireDate VARCHAR(50),
Position VARCHAR(50),
Salary Decimal(10,3) NOT NULL 
);

CREATE TABLE Departments(
DepartmentId INT PRIMARY KEY UNIQUE,
DepartmentName VARCHAR(50),
Location VARCHAR(50)
);

CREATE TABLE Projects(
ProjectId INT PRIMARY KEY UNIQUE,
ProjectName VARCHAR(50),
StartDate DATE,
Enddate DATE,
Budget DECIMAL(10,2)
);

CREATE TABLE Assignments(
AssignmentId INT PRIMARY KEY UNIQUE,
EmployeeId INT,
Projectid INT,
Role VARCHAR(50),
AssignmentDate date
);

CREATE TABLE Customers(
CustomerId INT PRIMARY KEY UNIQUE,
CustomerName VARCHAR(50),
ContactNumber VARCHAR(50),
Email VARCHAR(50),
Address VARCHAR(50)
);

CREATE TABLE Orders(
OrderId INT PRIMARY KEY UNIQUE,
CustomerId INT,
OrderDate DATE,
Totalamount int
);

CREATE TABLE Products(
ProductId INT PRIMARY KEY UNIQUE,
ProductName VARCHAR(50),
Category VARCHAR(50),
Price DECIMAL(10,2),
StockQuantity int
);

CREATE TABLE orderDetails(
OrderDetailId INT PRIMARY KEY UNIQUE,
OrderId INT,
ProductId INT,
Quantity INT,
UnitPrice DECIMAL(10,2)
);


