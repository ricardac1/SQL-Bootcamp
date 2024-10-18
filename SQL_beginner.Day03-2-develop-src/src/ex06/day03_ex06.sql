SELECT m1.pizza_name AS pizza_name,
    pz1.name AS pizzeria_name_1,
    pz2.name AS pizzeria_name_2,
    m1.price AS price
FROM menu AS m1
    JOIN menu AS m2 ON m1.price = m2.price
    JOIN pizzeria AS pz1 ON pz1.id = m1.pizzeria_id
    JOIN pizzeria AS pz2 ON pz2.id = m2.pizzeria_id
WHERE m1.id > m2.id
    AND m1.pizza_name = m2.pizza_name
ORDER BY pizza_name