--старт сессия №1
BEGIN;
-- обновление рейтинга
UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';
-- смотрим обновленные данные
SELECT *
FROM pizzeria;
--Сессия №2
-- смотрим данные во №2 сессия до коммита 
SELECT *
FROM pizzeria;
--Сессия №1
-- делаем коммит в №1 сессия 
COMMIT;
--Сессия №2
-- смотрим данные во №2 сессия после коммита
SELECT *
FROM pizzeria;