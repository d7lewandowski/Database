use Lucky_Shrub;

# Task 1
CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, Cost
FROM Orders;

SELECT * FROM OrdersView;

# Task 2

UPDATE OrdersView SET Cost = 200 where OrderID = 2;
SELECT * FROM Orders;


# Task 3

RENAME TABLE OrdersView TO ClientsOrdersView;

SELECT * FROM ClientsOrdersView;


# Task 4

DROP VIEW IF EXISTS ClientsOrdersView;

SELECT * FROM ClientsOrdersView;
