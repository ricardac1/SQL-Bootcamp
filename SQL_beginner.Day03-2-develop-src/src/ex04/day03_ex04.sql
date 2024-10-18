SELECT DISTINCT pizzeria.name
FROM pizzeria
    JOIN menu ON menu.pizzeria_id = pizzeria.id
    JOIN person_order ON person_order.menu_id = menu.id
    JOIN person ON person.id = person_order.person_id
WHERE person.gender = 'female'
    AND pizzeria.id NOT IN (
        SELECT pizzeria.id
        FROM pizzeria
            JOIN menu ON menu.pizzeria_id = pizzeria.id
            JOIN person_order ON person_order.menu_id = menu.id
            JOIN person ON person.id = person_order.person_id
        WHERE person.gender = 'male'
    )
ORDER BY 1