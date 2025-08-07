-- 1. Create Database
CREATE DATABASE SalesDB;
USE SalesDB;

-- 2. Create Tables
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- 3. Insert Sample Data
INSERT INTO Customers (FirstName, LastName, Email)
VALUES 
('Alice', 'Smith', 'alice@example.com'),
('Bob', 'Johnson', 'bob@example.com'),
('Carol', 'Davis', 'carol@example.com');

INSERT INTO Products (ProductName, Price, Stock)
VALUES
('Laptop', 1200.00, 10),
('Smartphone', 699.00, 25),
('Tablet', 399.00, 15);

INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate)
VALUES
(1, 1, 1, '2025-08-01'),
(2, 2, 2, '2025-08-02'),
(3, 3, 1, '2025-08-03');
