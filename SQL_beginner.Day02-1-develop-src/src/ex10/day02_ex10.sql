SELECT DISTINCT p1.name AS person_name1,
    p2.name AS person_name2,
    p1.address AS common_address
FROM person AS p1,
    person AS p2
WHERE p1.id > p2.id
    AND p1.address = p2.address
ORDER BY 1,
    2,
    3;