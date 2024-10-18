/*
 Пожалуйста, измените цену "greek pizza" на -10% от текущего значения.
 */
UPDATE menu
SET price = price * 0.9
WHERE pizza_name = 'greek pizza' -- SELECT *
    -- FROM menu