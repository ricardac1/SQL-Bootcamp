SELECT menu.pizza_name,
    menu.price,
    pizzeria.name,
    person_visits.visit_date
FROM person_visits
    JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
    JOIN person ON person.id = person_visits.person_id
    JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE person.name = 'Kate'
    AND menu.price BETWEEN 800 AND 1000
ORDER BY 1,
    2,
    3