CREATE TABLE mobile_phones
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(30) NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    product_count INT,
    price INT NOT NULL
);

INSERT INTO mobile_phones (product_name, manufacturer, product_count, price) VALUE 
("iPhone X", "Apple", 3, 76000),
("iPhone 8", "Apple", 2, 51000),
("Galaxy S9", "Samsung", 2, 56000),
("Galaxy S8", "Samsung", 1, 41000),
("P20 Pro", "Huawei", 5, 36000);

SELECT product_name, manufacturer, price FROM mobile_phones WHERE product_count > 2;
SELECT * FROM mobile_phones WHERE manufacturer = "Samsung";
SELECT * FROM mobile_phones WHERE product_name LIKE "iPhone%";
SELECT * FROM mobile_phones WHERE manufacturer LIKE "Samsung%";
SELECT * FROM mobile_phones WHERE product_name RLIKE '\\d';
SELECT * FROM mobile_phones WHERE product_name LIKE "%8%";