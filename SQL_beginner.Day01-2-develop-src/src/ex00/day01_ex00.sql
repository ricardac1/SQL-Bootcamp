SELECT menu.id object_id,
    menu.pizza_name object_name
FROM menu
UNION
SELECT person.id object_id,
    person.name object_name
FROM person
ORDER BY object_id,
    object_name;