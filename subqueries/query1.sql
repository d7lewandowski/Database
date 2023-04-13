use littlelemon_db;

# TASK 1

SELECT *
FROM Bookings
WHERE Bookings.BookingSlot > ALL (SELECT BookingSlot FROM Bookings WHERE GuestFirstName = 'Vanessa' AND GuestLastName = 'McCarthy');


# TASK 2

SELECT  * FROM MenuItems WHERE MenuItems.Price > ALL (SELECT Price FROM MenuItems WHERE MenuItems.Type IN ('Starters', 'Desserts'));

# TASK 3

SELECT *
FROM MenuItems
WHERE MenuItems.Price = (SELECT Price
                         FROM Menus,
                              MenuItems
                         WHERE MenuItems.ItemID = Menus.ItemID
                           AND MenuItems.Type = 'Starters'
                           and Menus.Cuisine = 'Italian');


# TASK 4

SELECT *
FROM MenuItems
WHERE NOT EXISTS(SELECT *
                 FROM TableOrders,
                      Menus
                 WHERE TableOrders.MenuID = Menus.MenuID
                   AND Menus.ItemID = MenuItems.ItemID);


