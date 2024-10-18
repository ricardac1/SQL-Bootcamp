--старт сессия №1
BEGIN ISOLATION LEVEL READ COMMITTED;
--старт сессия №2
BEGIN ISOLATION LEVEL READ COMMITTED;
-- выполняем запрос в сессия №1
SELECT SUM(rating)
FROM pizzeria;
-- выполняем запрос в сессия №2
SELECT SUM(rating)
FROM pizzeria;
-- добавляем запись в сессия №2
INSERT INTO pizzeria (id, name, rating)
VALUES (10, 'Kazan Pizza', 5);
COMMIT;
-- выполняем запрос в сессия №1
SELECT SUM(rating)
FROM pizzeria;
COMMIT;
-- выполняем запрос в сессия №2
SELECT SUM(rating)
FROM pizzeria;