SET enable_seqscan = OFF;
EXPLAIN ANALYSE
SELECT pizza_name,
    name AS pizzeria_name
FROM menu
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id