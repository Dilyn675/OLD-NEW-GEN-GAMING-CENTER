/*Create the Database*/
CREATE DATABASE OldNewGenGamingCenter;

/*Use the Database*/
USE OldNewGenGamingCenter;

/*Create Table for users*/
CREATE TABLE Users (
UserID INT AUTO_INCREMENT PRIMARY KEY, 
Name VARCHAR(255) NOT NULL UNIQUE, 
UserPassword VARCHAR(255) NOT NULL, 
Address VARCHAR(255), 
PhoneNumber VARCHAR(255),
ShippingAddress VARCHAR (255),
CreditCardNumber VARCHAR(255),
CreditCardExpirationDate DATE
);

CREATE TABLE Games (
  VideoGameID PRIMARY KEY,
  VideoGameName VARCHAR(255),
  Genre VARCHAR(255), 
  EsrbRating VARCHAR(255),
  GameAge VARCHAR(255),
  Price DECIMAL(10,2)
  );

CREATE TABLE consoles (
  ConsoleID Primary Key, 
  ConsoleName VARCHAR(255),
  ConsoleAge VARCHAR(255),
  ConsolePrice DECIMAL(10,2_),
  );

CREATE TABLE QuantityonHand（ 
VideoGameID INT,
Quantity INT, 
PRIMARY KEY （VideoGameID）， 
FOREIGN KEY（VideoGameID）REFERENCES Games（VideoGameID）
）；

-- Create table for orders
CREATE TABLE Orders (
Order ID INT AUTO_INCREMENT PRIMARY KEY,
Customer ID INT,
TotalWeight DECIMAL (10,2),
TotalPrice DECIMAL (10, 2),
ShippingCharge DECIMAL (10,2),
Date DATE,
Status VARCHAR (50),
FOREIGN KEY (CustomerID) REFERENCES Users (UserID)
);

--Create table for order details
CREATE TABLE OrderDetails (
OrderID INT, VideoGameID INT, Quantity INT,
Price DECIMAL (10, 2),
PRIMARY KEY (OrderID, VideoGameID),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY (VideoGameID) REFERENCES Games(VideoGameID)
);

—Create table for inventory details
CREATE TABLE Inventory ( 
ProductID INT PRIMARY KEY, 
Name VARCHAR(255), 
Description VARCHAR(255), 
PartNumber INT, 
QuantityOnHand INT, 
FOREIGN KEY (VideoGameID) REFERENCES Games (VideoGameID) 
);

--Create table for shipping and handling charges 
CREATE TABLE ShippingHandlingCharges ( 
WeightBracket INT PRIMARY KEY, 
Charge DECIMAL (10,2) 
);
