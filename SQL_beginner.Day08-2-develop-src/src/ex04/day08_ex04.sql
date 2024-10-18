--старт сессия №1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--старт сессия №2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- смотрим рейтинг для "Pizza Hut" в сессия №1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- смотрим рейтинг для "Pizza Hut" в сессия №2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- обновляем рейтинг для "Pizza Hut" в сессия №2 и фиксируем их
UPDATE pizzeria
SET rating = 3.0
WHERE name = 'Pizza Hut';
COMMIT;
-- смотрим рейтинг для "Pizza Hut" в сессия №1 рейтинг 3.6
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- фиксируем изменения в сессия №1
COMMIT;
-- смотрим рейтинг для "Pizza Hut" в сессия №1 рейтинг 3.0
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- смотрим рейтинг для "Pizza Hut" в сессия №1 рейтинг 3.0
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';