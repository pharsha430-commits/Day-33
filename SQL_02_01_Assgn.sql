SHOW DATABASES;
USE SHOPPING;
SHOW TABLES;
SELECT * FROM PRODUCTS;
SHOW TABLES;

CREATE TABLE prdts_prices (
product_id INT,
product_nanme varchar(50),
price INT
);
INSERT INTO prdts_prices VALUES (497, 'Laptop', 60000), (631, 'Mobile', 25000), (926, 'Airpods', 5000), (577, 'Charger', 773), (286, 'Monitor', 18000), (385, 'Mouse', 1200), (664, 'Keyboard', 4000), (219, 'Speaker', 6000), (751, 'Mobile Case', 1000);

SELECT * FROM prdts_prices;

DELIMITER //

CREATE FUNCTION get_min_price()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE min_price INT;

    SELECT MIN(price)
    INTO min_price
    FROM prdts_prices;

    RETURN min_price;
END //

DELIMITER ;

SELECT get_min_price() AS Minimum_Price;



