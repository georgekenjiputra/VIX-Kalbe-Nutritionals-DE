-- Use the KALBE database
USE KALBE;

-- Insert data into the table
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES
    (2341, 'Promag Tablet', 3000.00, 100),
    (2342, 'Hydro Coco 250ML', 7000.00, 20),
    (2343, 'Nutrive Benecol 100ML', 20000.00, 30),
    (2344, 'Blackmores Vit C 500Mg', 95000.00, 45),
    (2345, 'Entrasol Gold 370G', 90000.00, 120);
    
-- Show the table
SELECT *
FROM Inventory;