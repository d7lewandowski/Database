use jewelrystore_db;

select * from mg_orders;
select * from item;


# Task 1
SELECT CONCAT(LCASE(Name), '-', Quantity, '-', UCASE(OrderStatus))
FROM mg_orders
         inner join item i on mg_orders.ItemID = i.ItemID;


# Task 2
SELECT DATE_FORMAT(DeliveryDate, '%W')
FROM mg_orders;


# Task 3

SELECT OrderID, ROUND(0.05 * Cost, 2) FROM mg_orders;

# Task 4

SELECT DATE_FORMAT(DeliveryDate, '%W')
FROM mg_orders where DeliveryDate is not null;

