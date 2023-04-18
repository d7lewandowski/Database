use Lucky_Shrub;

SELECT * FROM Orders;

# Task 1

CREATE PROCEDURE GetOrdersData() SELECT * FROM Orders;

CALL GetOrdersData();

# Task 2

CREATE PROCEDURE GetListOfOrdersInRange(MinimumValue INT, MaximumValue INT) SELECT * FROM Orders
WHERE Cost BETWEEN MinimumValue AND MaximumValue;

CALL GetListOfOrdersInRange(150, 600);