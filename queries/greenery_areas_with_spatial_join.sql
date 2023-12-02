
WITH TreeCount AS (
    SELECT z.zipcode, COUNT(t.tree_id) AS tree_count
    FROM zipcode_areas z
    JOIN trees t ON ST_Within(t.geometry, z.geometry)
    GROUP BY z.zipcode
)
SELECT zipcode, tree_count
FROM TreeCount
ORDER BY tree_count DESC
LIMIT 10;
