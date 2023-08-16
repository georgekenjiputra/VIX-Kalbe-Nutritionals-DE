-- Use the KALBE database
USE KALBE;

-- Show Item_name with the highest Item_total
SELECT Item_name
FROM Inventory
ORDER BY Item_total DESC
LIMIT 1;