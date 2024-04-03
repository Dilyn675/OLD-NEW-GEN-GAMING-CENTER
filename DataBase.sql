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

/*Create Table for Games*/
CREATE TABLE Games (
VideoGameID INT PRIMARY KEY,
VideoGameName VARCHAR(255),
Genre VARCHAR(255), 
EsrbRating VARCHAR(255),
GameAge VARCHAR(255),
Price DECIMAL(10,2)
);

/*Create Table for consoles*/
CREATE TABLE consoles (
ConsoleID INT PRIMARY KEY, 
ConsoleName VARCHAR(255),
ConsoleAge VARCHAR(255),
ConsolePrice DECIMAL(10,2)
);

/*Create Table for QuantityonHand*/
CREATE TABLE QuantityonHand( 
VideoGameID INT,
Quantity INT, 
PRIMARY KEY (VideoGameID),
FOREIGN KEY (VideoGameID) REFERENCES Games(VideoGameID)
);

/*Create Table for Orders*/
CREATE TABLE Orders (
OrderID INT AUTO_INCREMENT PRIMARY KEY,
CustomerID INT,
TotalWeight DECIMAL (10,2),
TotalPrice DECIMAL (10, 2),
ShippingCharge DECIMAL (10,2),
Date DATE,
Status VARCHAR (50),
FOREIGN KEY (CustomerID) REFERENCES Users (UserID)
);

/*Create Table for OrderDetails*/
CREATE TABLE OrderDetails (
OrderID INT, VideoGameID INT, Quantity INT,
Price DECIMAL (10, 2),
PRIMARY KEY (OrderID, VideoGameID),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY (VideoGameID) REFERENCES Games(VideoGameID)
);

/*Create Table for Inventory*/
CREATE TABLE Inventory ( 
VideoGameID INT PRIMARY KEY, 
Name VARCHAR(255), 
Description VARCHAR(255), 
PartNumber INT, 
QuantityOnHand INT, 
FOREIGN KEY (VideoGameID) REFERENCES Games (VideoGameID) 
);

/*Create Table for ShippingHandlingCharges*/ 
CREATE TABLE ShippingHandlingCharges ( 
WeightBracket INT PRIMARY KEY, 
Charge DECIMAL (10,2) 
);

/*Create Table for ShippingHandlingCharges*/ 
CREATE TABLE ShippingHandlingCharges ( 
WeightBracket INT PRIMARY KEY, 
Charge DECIMAL (10,2) 
);
