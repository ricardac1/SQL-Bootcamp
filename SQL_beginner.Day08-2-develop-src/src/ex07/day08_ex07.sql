--старт сессия №1
BEGIN;
--старт сессия №2
BEGIN;
-- выполняем обновление в сессия №1
UPDATE pizzeria
SET rating = 3.6
WHERE id = 1;
-- выполняем обновление в сессия №2
UPDATE pizzeria
SET rating = 2.0
WHERE id = 2;
-- выполняем обновление в сессия №1
UPDATE pizzeria
SET rating = 4.0
WHERE id = 2;
-- выполняем обновление в сессия №2
UPDATE pizzeria
SET rating = 5.0
WHERE id = 1;
-- фиксируем изменения в сессия №1
COMMIT;
-- фиксируем изменения в сессия №2
COMMIT;