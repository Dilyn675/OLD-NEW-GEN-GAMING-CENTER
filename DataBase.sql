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
  EsrbRating VARCHAR(255)
  );

CREATE TABLE 
