--старт сессия №1
BEGIN ISOLATION LEVEL READ COMMITTED;
--старт сессия №2
BEGIN ISOLATION LEVEL READ COMMITTED;
-- смотрим рейтинг для "Pizza Hut" в сессия №1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- обновляем рейтинг для "Pizza Hut" в сессия №2 и фиксируем их
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';
COMMIT;
-- смотрим рейтинг для "Pizza Hut" в сессия №1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- фиксируем изменения в сессия №1
COMMIT;
-- смотрим рейтинг для "Pizza Hut" в сессия №1 и сессия №2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';