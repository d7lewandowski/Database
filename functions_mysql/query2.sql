use db_jewelrystore;

# Task 1
SELECT ClientID, OrderID, CEIL(Cost - (Cost * 5 / 100)) As afterDiscount
FROM client_orders
WHERE ItemID = 4;


# Task 2

SELECT ClientID, OrderID, FORMAT((Cost - (Cost * 5 / 100)), 2) As afterDiscount
FROM client_orders
WHERE ItemID = 4;

# Task 3

SELECT DeliveryDate as orderdate ,ADDDATE(DeliveryDate, INTERVAL 30 DAY) as deliverydate FROM mg_orders;

# Task 4

SELECT COALESCE(DeliveryDate, 'NOT DELIVERED')
FROM mg_orders;


# Task 5
SELECT OrderID, NULLIF(OrderStatus, 'In progress') as STATUS
FROM mg_orders;












