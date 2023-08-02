#Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными

CREATE TABLE sales
(
 id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 order_date DATE NOT NULL,
 count_product INT NOT NULL
);

#Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
INSERT INTO sales (order_date, count_product) VALUE 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT id "id заказа", 
case 
	WHEN count_product < 100
		THEN "Маленький заказ"
	WHEN count_product BETWEEN 100 AND 300
		THEN "Средний заказ"
	WHEN count_product > 300 
		THEN "Большой заказ"
end as "Тип заказа"
FROM sales;


#Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа

CREATE TABLE orders
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	employee_id CHAR(3) NOT NULL,
	amount REAL NOT NULL,
    order_status TEXT NOT NULL
);

INSERT INTO orders (employee_id, amount, order_status) VALUE 
("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANSELLED");

SELECT *, IF(order_status = "OPEN", "Order is in open state", 
IF (order_status = "CLOSED", "Order is closed", "Order is canselled"))
AS "full_order_status" FROM orders;