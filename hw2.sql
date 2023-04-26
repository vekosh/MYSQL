CREATE DATABASE hw_2;

USE hw_2;

-- 1. Используя операторы языка SQL, создайте таблицу “ sales” . Заполните ее данными.
CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    count_product INT
);

INSERT sales (order_date, count_product)
VALUES
	('2022-01-01', 156),
	('2022-01-02', 180),
    ('2022-01-03', 21),
    ('2022-01-04', 124),
    ('2022-01-05', 341);
 
 -- 2. Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва :
-- меньше 100 - Маленький заказ
-- от 100 до 300 - Средний заказ
-- больше 300 - Большой заказ
SELECT id, count_product,
CASE 
	WHEN count_product < 100
		THEN 'Маленький заказ'
	WHEN count_product BETWEEN 100 AND 300
		THEN 'Средний заказ'
	ELSE 'Большой заказ'
END AS 'Тип заказа'
FROM sales;

/*3. Создайте таблицу “ orders” , заполните ее значениями
1 e03 15.00 OPEN
2 e01 25.50 OPEN
3 e05 100.70 CLOSED
4 e02 22.18 OPEN
5 e04 9.50 CANCELLED
*/
 CREATE TABLE orders
 (
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(5),
    amount FLOAT,
    order_status VARCHAR(10)
);

INSERT orders (employee_id, amount, order_status)
VALUES
	('e03', 15.00, 'OPEN'), 
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');

SELECT * FROM orders;

SELECT id, order_status,
CASE 
	WHEN order_status = 'OPEN'
		THEN '«Order is in open state»'
	WHEN order_status = 'CLOSED'
		THEN '«Order is closed»'
	ELSE '«Order is cancelled»'
END AS full_order_status
FROM orders;

/*4. Чем 0 отличается от NULL?
 "0" — это константа
 NULL — «пустое поле» null, «поле, не содержащее никакого значения».
 */
