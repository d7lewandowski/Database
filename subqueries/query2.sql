use littlelemon_db;
# Task 1

SELECT * FROM LowCostMenuItems;

SELECT TYPE, AVG(Price) FROM MenuItems GROUP BY TYPE;

SELECT ROUND(MAX(avgPrice), 2), ROUND(MIN(avgPrice), 2)
FROM (SELECT TYPE, AVG(Price) as avgPrice FROM MenuItems GROUP BY TYPE) as aPrice;




# Task 2
SELECT Type, MiN(Price) FROM MenuItems GROUP BY Type;

INSERT INTO LowCostMenuItems
SELECT ItemID, Name, Price
FROM MenuItems
WHERE Price = ANY (SELECT MiN(Price) FROM MenuItems GROUP BY Type);


# Task 3
SELECT * FROM MenuItems;

DELETE
FROM LowCostMenuItems
WHERE PRICE > ALL(SELECT MIN(Price) as p from MenuItems GROUP BY TYPE HAVING p between 5 and 10);






