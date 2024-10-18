/*
 Пожалуйста, запишите новые посещения ресторана Domino's Денисом и Ириной 24 февраля 2022 года
 */
INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES (
        (
            SELECT max(id)
            FROM person_visits
        ) + 1,
        (
            SELECT id
            FROM person
            WHERE name = 'Denis'
        ),
        (
            SELECT id
            FROM pizzeria
            WHERE name = 'Dominos'
        ),
        '2022-02-24'
    ),
    (
        (
            SELECT max(id)
            FROM person_visits
        ) + 2,
        (
            SELECT id
            FROM person
            WHERE name = 'Irina'
        ),
        (
            SELECT id
            FROM pizzeria
            WHERE name = 'Dominos'
        ),
        '2022-02-24'
    );
-- SELECT *
-- FROM person_visits