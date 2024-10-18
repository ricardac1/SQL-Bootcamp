SHOW TRANSACTION ISOLATION LEVEL;
--старт сессия №1
BEGIN;
--старт сессия №2
BEGIN;
-- смотрим рейтинг для "Pizza Hut" в сессия №1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- смотрим рейтинг для "Pizza Hut" в сессия №2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- обновляем рейтинг для "Pizza Hut" в сессия №1
UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';
-- обновляем рейтинг для "Pizza Hut" в сессия №2
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';
-- фиксируем изменения в сессия №1
COMMIT;
-- фиксируем изменения в сессия №2
COMMIT;
-- смотрим рейтинг для "Pizza Hut" в сессия №1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- смотрим рейтинг для "Pizza Hut" в сессия №2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- везде результат 3.6