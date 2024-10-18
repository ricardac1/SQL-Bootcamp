WITH vs AS(
    SELECT pz.name,
        COUNT(*) AS count
    FROM person_visits AS pv
        JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
    GROUP BY pz.name
    ORDER BY pz.name
),
orders AS (
    SELECT pz.name,
        COUNT(*) AS count
    FROM person_order AS po
        JOIN menu AS m ON m.id = po.menu_id
        JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
    GROUP BY pz.name
    ORDER BY pz.name
)
SELECT pz.name,
    COALESCE(vs.count, 0) + COALESCE(orders.count, 0) AS total_count
FROM pizzeria AS pz
    LEFT JOIN vs ON vs.name = pz.name
    LEFT JOIN orders ON orders.name = pz.name
ORDER BY total_count DESC,
    name