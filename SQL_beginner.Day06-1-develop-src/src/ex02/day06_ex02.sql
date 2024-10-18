SELECT p.name AS name,
    m.pizza_name AS pizza_name,
    m.price AS price,
    m.price * (100 - pd.discount) / 100 AS discount_price,
    pz.name AS pizzeria_name
FROM person_order AS po
    JOIN menu AS m ON m.id = po.menu_id
    JOIN person AS p ON p.id = po.person_id
    JOIN person_discounts AS pd ON pd.person_id = p.id
    JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
ORDER BY p.name,
    m.pizza_name;