CREATE DATABASE hw_4;

USE hw_4;

CREATE TABLE staff
(	id INT PRIMARY KEY AUTO_INCREMENT,
	firstname VARCHAR(30),
    lastname VARCHAR(30),
    post VARCHAR(30),
    seniority INT,
    salary INT,
    age INT
    );

INSERT staff (firstname, lastname, post, seniority, salary, age)
VALUES
	('Вася', 'Петров', 'Начальник', 40, 100000, 60),
	('Петр', 'Власов', 'Начальник', 8, 70000, 30),
	('Катя', 'Катина', 'Инженер', 2, 70000, 25),
	('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
	('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
	('Петр', 'Петров', 'Рабочий', 20, 25000, 40),
	('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
	('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
	('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
	('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
	('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
	('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
	('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
    
SELECT * FROM staff;
    
-- 1. Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания
    
SELECT * 
FROM staff
ORDER BY salary;
    
SELECT * 
FROM staff
ORDER BY salary DESC;

-- 2. Выведите 5 максимальных заработных плат (saraly)

SELECT *
FROM staff
ORDER BY salary DESC
LIMIT 5;

-- 3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)

SELECT post, SUM(salary) AS salary_all
FROM staff
GROUP BY post;

-- 4. Найдите кол-во сотрудников с специальностью (post) « Рабочий» в возрасте от 24 до 49 лет включительно.

SELECT COUNT(id) AS count_id
FROM staff
WHERE post = "Рабочий" AND age > 24 AND age <= 49;
    
-- 5. Найдите количество специальностей
SELECT COUNT(DISTINCT post) AS count_post
FROM staff;

-- 6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет
SELECT post, AVG(age) AS average_age
FROM staff
GROUP BY post
HAVING age < 30;
-- Скрипт группировка по специальности и возрастам , без отборов
SELECT   post, AVG(age) 
FROM staff GROUP BY post;