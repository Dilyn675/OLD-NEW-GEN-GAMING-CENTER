/*Create the Database*/
CREATE DATABASE OldNewGenGamingCenter;
 
/*Use the Database*/
USE OldNewGenGamingCenter;
 
/*Create Table for users*/
CREATE TABLE Users (
UserID INT AUTO_INCREMENT PRIMARY KEY, 
Name VARCHAR(255) NOT NULL UNIQUE,
EmailAddress VARCHAR(255),
ShippingAddress VARCHAR (255),
CreditCardNumber VARCHAR(255),
CreditCardExpirationDate DATE
);

/*Create Table for user-admin*/
CREATE TABLE UserAdmin (
UserAdminID INT AUTO_INCREMENT PRIMARY KEY, 
Name VARCHAR(255) NOT NULL UNIQUE, 
Address VARCHAR(255), 
PhoneNumber VARCHAR(255),
EmailAddress VARCHAR (255),
Password VARCHAR (255)
);
 
CREATE TABLE Games (
VideoGameID INT PRIMARY KEY,
VideoGameName VARCHAR(255),
PictureLink VARCHAR(255);
Genre VARCHAR(255), 
EsrbRating VARCHAR(255),
GameAge VARCHAR(255),
Price DECIMAL(10,2)
);
  
CREATE TABLE QuantityonHand( 
VideoGameID INT,
Quantity INT, 
PRIMARY KEY (VideoGameID),
FOREIGN KEY (VideoGameID) REFERENCES Games(VideoGameID)
);

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

CREATE TABLE OrderDetails (
OrderID INT, VideoGameID INT, Quantity INT,
Price DECIMAL (10, 2),
PRIMARY KEY (OrderID, VideoGameID),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY (VideoGameID) REFERENCES Games(VideoGameID)
);

CREATE TABLE Inventory ( 
VideoGameID INT PRIMARY KEY, 
Name VARCHAR(255), 
Description VARCHAR(255), 
QuantityOnHand INT, 
FOREIGN KEY (VideoGameID) REFERENCES Games (VideoGameID) 
);

CREATE TABLE ShippingHandlingCharges ( 
WeightBracket INT PRIMARY KEY, 
Charge DECIMAL (10,2) 
);
INSERT INTO `games` (`VideoGameID`, `VideoGameName`, `PictureLink`, `Genre`, `EsrbRating`, `GameAge`, `Price`) VALUES 
(1001, 'Devil May Cry 5', 'DevilMayCry5.jpg', 'hack & slash and action-adventure', 'M Rating', '5y', '39.99'), (1002, 'fate samurai remnant', 'FateSamuraiRemnant.jpeg', 'action RPG', 'Teen Rating', '1y', '59.99'), (1003, 'wii sports resort', 'WiiSportsResort.jpg', 'sports simulation', 'E', '15y', '30.99'), (1004, ’Ghost of Tsushima Director's Cut', 'Ghost.jpg', 'Action-adventure, Stealth', 'M', '4y', '59.99'), (1005, 'ben 10 omniverse 2 3ds', 'ben10.jpg', 'Beat 'em up, Runner', 'E10+', '11y', '34.99');
  
INSERT INTO `inventory` (`VideoGameID`, `Name`, `Description`, `PartNumber`, `QuantityOnHand`) VALUES
(1001, 'Devil May Cry 5', 'hack & slash and action-adventure', 1001, 150), (1002, 'fate samurai remnant', 'action RPG', 1002, 60), (1003, 'wii sports resort', 'sports simulation', 1003, 25), (1004, ’Ghost of Tsushima Director's Cut', 'In the late 13th century, the Mongol empire has laid waste to entire nations along their campaign to conquer the east.', 1004, 250), (1005, 'ben 10 omniverse 2 3ds', ''Beat 'em up, Runner', 1005, 75);
 
INSERT INTO `quantityonhand` (`VideoGameID`, `Quantity`) VALUES 
(1001, 150), (1002, 60), (1003, 25), (1004, 250), (1005, 75);
 
INSERT INTO `shippinghandlingcharges` (`WeightBracket`, `Charge`) VALUES
(1, 5.00), (2, 5.25), (3, 5.45), (4, 5.65), (5, 5.85), (6, 6.00);

