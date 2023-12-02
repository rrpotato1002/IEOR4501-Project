
WITH TopTreeZipCodes AS (
    SELECT r.zipcode
    FROM trees
    JOIN rents r ON trees.zipcode = r.zipcode
    GROUP BY r.zipcode
    ORDER BY COUNT(*) DESC
    LIMIT 10
)
SELECT ttz.zipcode, ROUND(CAST(AVG(r.rent) AS numeric), 2) AS average_rent
FROM TopTreeZipCodes ttz
JOIN rents r ON ttz.zipcode = r.zipcode
WHERE r.date BETWEEN '2023-08-01' AND '2023-08-31'
GROUP BY ttz.zipcode
ORDER BY COUNT(*) DESC;
