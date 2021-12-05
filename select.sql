Question
Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

#Product
Product(maker, model, type)
maker - производитель
model - номер модeлей
model - Primary key
type - тип(PC, Laptop, Printer)

model - уникальны для производителей и типов продуктов.

#PC
PC(code, model, speed, ram, hd, cd, price)
code - Primary key
В таблице PC для каждого ПК, однозначно определяемого уникальным кодом – code, указаны модель – model (внешний ключ к таблице Product), скорость - speed (процессора в мегагерцах), объем памяти - ram (в мегабайтах), размер диска - hd (в гигабайтах), скорость считывающего устройства - cd (например, '4x') и цена - price.

#Laptop
Laptop(code, model, speed, ram, hd, price, screen)
code - Primary
Таблица Laptop аналогична таблице РС за исключением того, что вместо скорости CD содержит размер экрана -screen (в дюймах).

#Printer
Printer(code, model, color, type, price)
code - Primary key
В таблице Printer для каждой модели принтера указывается, является ли он цветным - color ('y', если цветной), тип принтера - type (лазерный – 'Laser', струйный – 'Jet' или матричный – 'Matrix') и цена - price.

SELECT Product.model, PC.speed, PC.hd FROM Product JOIN PC ON Product.model=PC.model WHERE PC.price < 500;
