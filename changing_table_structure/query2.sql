USE little_lemon;

CREATE TABLE FoodOrders(OrderID INT, Quantity INT, Cost Decimal(4,2));

show columns from FoodOrders;

# Task 1
ALTER TABLE FoodOrders MODIFY OrderID INT not null PRIMARY KEY;

show columns from FoodOrders;


# Task 2
ALTER TABLE FoodOrders MODIFY Quantity INT NOT NULL, MODIFY Cost DECIMAL(4,2) NOT NULL;

show columns from FoodOrders;

# Task 3
ALTER TABLE FoodOrders ADD COLUMN OrderDate DATE NOT NULL, ADD COLUMN CustomerID INT NOT NULL,
ADD FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID);

# Task 4

ALTER TABLE FoodOrders DROP COLUMN OrderDate;

show columns from FoodOrders;
# Task 5

ALTER TABLE OrderStatus CHANGE Order_status DeliveryStatus VARCHAR(15);

# Task 6

ALTER TABLE OrderStatus RENAME OrderDeliveryStatus;
