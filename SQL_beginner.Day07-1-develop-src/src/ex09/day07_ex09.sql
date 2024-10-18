SELECT p.address AS address,
    ROUND(MAX(age) - (MIN(age) / MAX(age::NUMERIC)), 2) AS formula,
    ROUND(AVG(age), 2) AS average,
    CASE
        WHEN ROUND(MAX(age) - (MIN(age) / MAX(age::NUMERIC)), 2) > ROUND(AVG(age), 2) THEN TRUE
        ELSE FALSE
    END AS comparison
FROM person AS p
GROUP BY p.address
ORDER BY p.address;