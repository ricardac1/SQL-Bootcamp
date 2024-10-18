/*Пожалуйста, зарегистрируйте новые заказы от Дениса и Ирины на 24 февраля 2022 года на новое меню с "сицилийской пиццей"
 */
INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES (
        (
            SELECT max(id)
            FROM person_order
        ) + 1,
        (
            SELECT id
            FROM person
            WHERE name = 'Denis'
        ),
        (
            SELECT id
            FROM menu
            WHERE pizza_name = 'sicilian pizza'
        ),
        '2022-02-24'
    ),
    (
        (
            SELECT max(id)
            FROM person_order
        ) + 2,
        (
            SELECT id
            FROM person
            WHERE name = 'Irina'
        ),
        (
            SELECT id
            FROM menu
            WHERE pizza_name = 'sicilian pizza'
        ),
        '2022-02-24'
    );
-- SELECT *
-- FROM person_order