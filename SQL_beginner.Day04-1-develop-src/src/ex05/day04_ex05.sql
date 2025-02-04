CREATE VIEW v_price_with_discount AS (
    SELECT person.name AS name,
        menu.pizza_name AS pizza_name,
        menu.price AS price,
        CAST(menu.price - menu.price * 0.1 AS int) AS discount_price
    FROM person_order
        JOIN person ON person.id = person_order.person_id
        JOIN menu ON menu.id = person_order.menu_id
    ORDER BY name,
        pizza_name
);
-- SELECT *
-- FROM v_price_with_discount;
-- DROP VIEW v_price_with_discount;