/* 
 Пожалуйста, зарегистрируйте новые заказы от всех желающих на "greek pizza" 25 февраля 2022 года
 */
INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES (
        generate_series(
            (
                SELECT max(id)
                FROM person_order
            ) + 1,
            (
                SELECT max(id) + (
                        SELECT max(id)
                        FROM person
                    )
                FROM person_order
            ),
            1
        ),
        generate_series(
            (
                SELECT min(id)
                FROM person
            ),
            (
                SELECT max(id)
                FROm person
            ),
            1
        ),
        (
            SELECT id
            FROM menu
            WHERE pizza_name = 'greek pizza'
        ),
        '2022-02-25'
    );
-- SELECT *
-- FROM person_order