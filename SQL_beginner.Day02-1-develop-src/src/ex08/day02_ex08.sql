SELECT person.name AS name
FROM person
    JOIN person_order ON person_order.person_id = person.id
    JOIN menu ON menu.id = person_order.menu_id
WHERE gender = 'male'
    AND (
        pizza_name = 'cheese pizza'
        OR pizza_name = 'pepperoni pizza'
    )
    AND (
        address = 'Moscow'
        OR address = 'Samara'
    )
ORDER BY person.name DESC;