WITH a_v AS (
    SELECT pizzeria.name
    FROM person_visits
        JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
        JOIN person ON person.id = person_visits.person_id
    WHERE person.name = 'Andrey'
),
a_o AS (
    SELECT pizzeria.name
    FROM person_order
        JOIN menu ON menu.id = person_order.menu_id
        JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
        JOIN person ON person.id = person_order.person_id
    WHERE person.name = 'Andrey'
)
SELECT a_v.name
FROM a_v
EXCEPT
SELECT a_o.name
FROM a_o
ORDER BY 1