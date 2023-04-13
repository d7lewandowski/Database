DROP DATABASE little_lemon;

CREATE DATABASE little_lemon;

USE little_lemon;

CREATE TABLE Customers(
CustomerID INT NOT NULL PRIMARY KEY,
FullName VARCHAR(100) NOT NULL,
PhoneNumber INT NOT NULL UNIQUE);

CREATE TABLE Bookings (
BookingID INT NOT NULL PRIMARY KEY,
BookingDate DATE NOT NULL,
TableNumber INT NOT NULL,
NumberOfGuests INT NOT NULL CHECK (NumberOfGuests <= 8),
CustomerID INT NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID) ON DELETE CASCADE ON UPDATE CASCADE);


CREATE TABLE Starters(
StarterName VARCHAR(100) NOT NULL PRIMARY KEY,
Cost Decimal(3,2),
StaterType VARCHAR(100) DEFAULT 'Mediterranean');