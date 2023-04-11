DROP DATABASE Mangata_Gallo;
CREATE DATABASE Mangata_Gallo;

USE Mangata_Gallo;

# Task 1
CREATE TABLE Staff(
  StaffID int,
  FullName VARCHAR(100),
  PhoneNumber VARCHAR(10)
);

show columns from Staff;

# Task 2
ALTER TABLE Staff
    MODIFY StaffID INT not null PRIMARY KEY,
    MODIFY FullName VARCHAR(100) NOT NULL,
    MODIFY PhoneNumber INT not null;


show columns from Staff;

# Task 3
ALTER TABLE Staff
ADD Role VARCHAR(50) NOT NULL;

show columns from Staff;

# Task 4
ALTER TABLE Staff
DROP COLUMN PhoneNumber;

show columns FROM Staff;