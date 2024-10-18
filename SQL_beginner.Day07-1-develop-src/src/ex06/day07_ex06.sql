SELECT pz.name AS name,
    COUNT(*) AS count_of_orders,
    ROUND(AVG(price), 2) AS average_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM person_order AS po
    JOIN menu AS m ON m.id = po.menu_id
    JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
GROUP BY name
ORDER BY name ASC;