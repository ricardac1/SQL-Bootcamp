SELECT order_date action_date,
    person_id person_id
FROM person_order
INTERSECT
SELECT visit_date action_date,
    person_id person_id
FROM person_visits
ORDER BY action_date ASC,
    person_id DESC