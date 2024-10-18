--старт сессия №1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--старт сессия №2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- выполняем запрос в сессия №1
SELECT SUM(rating)
FROM pizzeria;
-- добавляем запись в сессия №2
INSERT INTO pizzeria (id, name, rating)
VALUES (11, 'Kazan Pizza 2', 4);
COMMIT;
-- выполняем запрос в сессия №1
SELECT SUM(rating)
FROM pizzeria;
-- фиксируем изменения в сессия №1
COMMIT;
-- выполняем запрос в сессия №1 и сессия №2 
SELECT SUM(rating)
FROM pizzeria;