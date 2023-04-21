-- CREATE DATABASE hw_1;

-- USE hw_1;

CREATE TABLE mobile_phones
(
	id INT NOT NULL AUTO_INCREMENT,
	product_name VARCHAR(45) NOT NULL,
	manufacturer VARCHAR(45) NOT NULL,
	product_count INT  NOT NULL,
	price Float  NOT NULL,
	PRIMARY KEY (id));

INSERT mobile_phones ( product_name, manufacturer, product_count, price)
VALUES
	( "IphoneX", "Apple", 3, 76000), 
	( "Iphone8", "Apple", 2, 51000),
	( "GalaxyS9", "Samsung", 2, 56000),
	( "GalaxyS8", "Samsung", 1, 41000), 
	("P20Pro", "Huawei", 5, 36000);
-- Выведите название, производителя и цену для товаров, количество которых превышает 2    
SELECT * FROM mobile_phones
WHERE product_count >= 2;
-- Bесь ассортимент товаров марки “Samsung”
SELECT * FROM mobile_phones
WHERE manufacturer = 'Samsung';
-- Товары, в которых есть упоминание "Iphone"
SELECT * FROM mobile_phones
WHERE product_name like '%Iphone%';
-- Товары, в которых есть упоминание "Samsung"
SELECT * FROM mobile_phones
WHERE manufacturer = 'Samsung';
-- Товары, в которых есть ЦИФРЫ
SELECT * FROM mobile_phones
WHERE product_name  REGEXP '[0-9]';
-- Товары, в которых есть ЦИФРА "8"  
Select * from mobile_phones
Where product_name like "%8%" ;