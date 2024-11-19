 1. Вывести все поля и все строки
 SELECT * FROM Table;

 2. Вывести всех студентов в таблице
SELECT * FROM Table
WHERE status = 'student';

 3. Вывести только Id пользователей
SELECT id FROM Table;

 4. Вывести только имя пользователей
SELECT name FROM Table;

 5. Вывести только email пользователей
SELECT email FROM Table;

 6. Вывести имя и email пользователей
SELECT name, email FROM Table;

 7. Вывести id, имя, email и дату создания пользователей
SELECT id, name, email, created_on FROM Table;

 8. Вывести пользователей где password 12333
SELECT login FROM Table
WHERE password = '12333'

 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
SELECT User FROM Table
WHERE DateOFcreate > '2021-03-26 00:00:00';

 10. Вывести пользователей, где в имени есть слово Анна
SELECT * FROM Table
WHERE name LIKE '%Анна%';

 11. Вывести пользователей, где в имени в конце есть 8
SELECT * FROM Table
WHERE name LIKE '%8';

 12. Вывести пользователей, где в имени в есть буква а
SELECT * FROM Table
WHERE name LIKE '%а%'

 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
SELECT * FROM Table
WHERE created_on = '2021-07-12 00:00:00'
 14. Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
SELECT * FROM Table 
WHERE created_on = '2021-07-12 00:00:00' AND password = '1m313';

 15. Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и , у которых в имени есть слово Andrey
SELECT * FROM Table 
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%Andrey%';

 16. Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и , у которых в имени есть цифра 8
SELECT * FROM Table 
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%8%';

 17. Вывести пользователя, у которых id равен 110
SELECT * FROM Table
WHERE id = 110;

 18. Вывести пользователя, у которых id равен 153
SELECT * FROM Table
WHERE id = 153;

 19. Вывести пользователя, у которых id больше 140
SELECT * FROM Table
WHERE id > 140;

 20. Вывести пользователя, у которых id меньше 130
SELECT * FROM Table
WHERE id  < 110;

 21. Вывести пользователя, у которых id меньше 127 или больше 188
SELECT * FROM Table
WHERE id < 127 OR id > 188;
или
SELECT * FROM Table
WHERE id NOT BETWEEN 127 AND 188;

 22. Вывести пользователя, у которых id меньше либо равно 137
SELECT * FROM Table
WHERE id <= 137;

 23. Вывести пользователя, у которых id больше либо равно 137
SELECT * FROM Table
WHERE id >= 137;

 24. Вывести пользователя, у которых id больше 180 но меньше 190
SELECT * FROM Table
WHERE id > 180 AND id < 190;

 25. Вывести пользователя, у которых id между 180 и 190
SELECT * FROM Table
WHERE id BETWEEN 180 AND 190;

 26. Вывести пользователей где password равен 12333, 1m313, 123313
SELECT * FROM Table
WHERE password IN ('12333', '1m313', '123313');

 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM Table
WHERE  created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

 28. Вывести минимальный id
SELECT MIN(id) FROM Table;
 
 29. Вывести максимальный id
SELECT MAX(id) FROM Table;

 30. Вывести количество пользователей
SELECT COUNT(id) FROM Table;

 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользователя
SELECT id, name, created_on from Table
ORDER BY created_on;

 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользователя
SELECT id, name, created_on from Table
ORDER BY created_on DESC;

