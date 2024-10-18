INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES(
        (
            SELECT max(id)
            FROM person_visits
        ) + 1,
        (
            SELECT id
            FROM person
            WHERE name = 'Dmitriy'
        ),
        (
            SELECT id
            FROM pizzeria
            WHERE name = 'Best Pizza'
        ),
        '2022-01-08'
    );
-- SELECT *
-- FROM person_visits;
-- DELETE FROM person_visits
-- WHERE id = 20;
INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES(
        (
            SELECT max(id)
            FROM person_order
        ) + 1,
        (
            SELECT id
            FROM person
            WHERE name = 'Dmitriy'
        ),
        (
            SELECT id
            FROM menu
            WHERE pizza_name = 'cheese pizza'
            LIMIT 1
        ), '2022-01-08'
    );
-- SELECT *
-- FROM person_order;
-- DELETE FROM person_order
-- WHERE id = 21;
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
SELECT *
FROM mv_dmitriy_visits_and_eats;