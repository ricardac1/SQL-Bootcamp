WITH cte AS(
    SELECT id AS menu_id
    FROM menu
    WHERE NOT EXISTS (
            SELECT menu_id
            FROM person_order
            WHERE person_order.menu_id = menu.id
        )
)
SELECT menu.pizza_name AS pizza_name,
    menu.price AS price,
    pizzeria.name AS pizzeria_name
FROM menu
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
    JOIN cte ON cte.menu_id = menu.id
ORDER BY 1,
    2