SELECT pv.person_id AS person_id,
    COUNT(*) AS count_of_visits
FROM person_visits AS pv
GROUP BY person_id
ORDER BY person_id DESC,
    count_of_visits DESC