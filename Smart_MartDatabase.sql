
USE SmartMart2;
DROP TABLE IF EXISTS SALES;
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS CUSTOMER;

CREATE TABLE CUSTOMER (
CustomerID int Primary key,
CustomerName VARCHAR(50)NOT NULL,
Gender VARCHAR(10),
City VARCHAR(30),
Age int
);

USE SmartMart2;
CREATE TABLE PRODUCT(
ProductID int primary key,
ProductName VARCHAR(50)NOT NULL,
Category VARCHAR(30),
Price decimal(10,2),
StockQuantity int);

USE SmartMart2;
CREATE TABLE SALES (
SaleID int primary key,
CustomerID int,
ProductID int,
QuantitySold int,
SaleDate date,
FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);

USE smartMart2;
INSERT INTO PRODUCT (ProductID,ProductName,Category,Price,StockQuantity) VALUES 
(101,'Sugar', 'Grocery', 180, 150),
(102,'Bread', 'Bakery', 70, 80),
(103,'Milk', 'Dairy', 120, 100),
(104,'Soap', 'HouseHold', 250, 50),
(105,'Rice', 'Grocery', 350,200),
(106,'Weed', 'Essential',400,200);

USE smartMart2;
SELECT * FROM PRODUCT WHERE price > 300;
SELECT * FROM PRODUCT WHERE ProductNAME LIKE 'S%';
SELECT * FROM PRODUCT WHERE Stockquantity between 50 and 150;
SELECT * FROM PRODUCT WHERE Price IN (70,120);
SELECT * FROM PRODUCT WHERE Category != 'HouseHold';
SELECT MAX(Price) AS Highestprice FROM PRODUCT;
SELECT min(Price) as Lowestprice FROM PRODUCT;
SELECT avg(Price) as Averageprice FROM PRODUCT;
SELECT count(*) as Total FROM PRODUCT;

USE smartMart2;
CREATE VIEW ProductView AS 
SELECT ProductID, ProductName, Price
FROM PRODUCT;

GIT innit






