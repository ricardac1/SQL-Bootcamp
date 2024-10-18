--старт сессия №1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--старт сессия №2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
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
-- обновляем рейтинг для "Pizza Hut" в сессия №2, на этом этапе все зависнет, будет ожидаться фиксации изменений в сессии #1
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';
-- фиксируем изменения в сессия №1
COMMIT;
-- фиксируем изменения в сессия №2
COMMIT;
-- смотрим рейтинг для "Pizza Hut" в сессия №1 после фиксации реультат: 4
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- смотрим рейтинг для "Pizza Hut" в сессия №2 после фиксации реультат: 4
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';