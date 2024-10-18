WITH vd AS (
    SELECT visit_date
    FROM person_visits
    WHERE person_id = 1
        OR person_id = 2
),
dates AS (
    SELECT generate_series(
            '2022-01-01'::date,
            '2022-01-10'::date,
            '1 day'::interval
        )::date AS missing_date
)
SELECT missing_date
FROM dates
    LEFT JOIN vd ON vd.visit_date = dates.missing_date
WHERE vd.visit_date IS NULL;