-- Use the KALBE database
USE KALBE;

-- Find the lowest Item_total
SELECT MIN(Item_total) INTO @min_item_total FROM Inventory;

-- Delete the row(s) with the lowest Item_total
DELETE FROM Inventory
WHERE Item_total = @min_item_total;

-- Show the table
SELECT *
FROM Inventory;