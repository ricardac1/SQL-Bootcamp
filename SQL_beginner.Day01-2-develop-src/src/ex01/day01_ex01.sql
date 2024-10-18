SELECT menu.pizza_name object_name
FROM menu
UNION ALL
SELECT person.name object_name
FROM person
ORDER BY object_name;