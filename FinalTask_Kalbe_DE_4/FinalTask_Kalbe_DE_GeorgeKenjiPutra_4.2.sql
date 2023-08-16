-- Use the KALBE database
USE KALBE;

-- Create the Inventory table
CREATE TABLE IF NOT EXISTS Inventory (
    Item_code INT PRIMARY KEY,
    Item_name VARCHAR(255) NOT NULL,
    Item_price DECIMAL(10, 2) NOT NULL,
    Item_total INT NOT NULL
);