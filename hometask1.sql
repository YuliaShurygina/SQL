-- Создание базы данных --
CREATE DATABASE mobile_phones;
-- Создание таблицы --
CREATE TABLE smart_phones (
  phone_id INT PRIMARY KEY NOT NULL,
  model VARCHAR(100) NOT NULL,
  brand_name VARCHAR(45) NOT NULL UNIQUE,
  price DECIMAL(5, 2) NOT NULL,
  quantity INT NULL);
-- Внесение изменений в таблицу --
ALTER TABLE smart_phones
CHANGE COLUMN phone_id phone_id INT NOT NULL AUTO_INCREMENT ;
ALTER TABLE `mobile_phones`.`smart_phones` 
CHANGE COLUMN `price` `price` DECIMAL NOT NULL ;
-- Заполнение таблицы--
INSERT INTO smart_phones (model, brand_name, price, quantity)
VALUES 
('Galaxy S22 Ultra', 'Samsung', 91575, 2),
('Galaxy A03 4/64 Gb', 'Samsung', 7451, 100),
('Galaxy A23 4/64 Gb', 'Samsung', 12395, 50),
('Galaxy Note20 Ultra 12/256 Gb', 'Samsung', 52196, 1),
('iPhone 11 128 Gb', 'Apple', 37453, 2),
('iPhone 12 64 Gb', 'Apple', 46296, 15),
('iPhone 13 128 Gb', 'Apple', 52544, 72),
('Redmi Note 10 Pro 6/128 Gb', 'Xiaomi', 17566, 23),
('Redmi 10 2022 4/64 Gb', 'Xiaomi', 11553, 2),
('Redmi A1+ 2/32 Gb', 'Xiaomi', 5911, 88);

-- Использование определенной базы данных --
USE mobile_phones;
-- Вывод всего содержимого таблицы --
SELECT * 
FROM smart_phones;
-- Вывод названия, производителя и цену для товаров, количество которых превышает 2--
SELECT model, brand_name, price 
FROM smart_phones
WHERE quantity > 2;
-- Выведите весь ассортимент товаров марки “Samsung” --
SELECT model
FROM smart_phones
WHERE brand_name = 'Samsung';