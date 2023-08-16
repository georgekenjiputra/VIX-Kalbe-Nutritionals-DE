-- Use the KALBE database
USE KALBE;

-- Updating the price for the row that highest number in Item_total
UPDATE Inventory
SET Item_price = 100000
WHERE Item_total = (
    SELECT Item_total
    FROM (SELECT Item_total
        FROM Inventory
        ORDER BY Item_total DESC
        LIMIT 1) AS subquery
        );

-- Show the table
SELECT Item_code, Item_name, Item_price, Item_total
FROM Inventory
ORDER BY Item_total DESC
LIMIT 1;