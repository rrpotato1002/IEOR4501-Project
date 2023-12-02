
WITH RentRanking AS (
    SELECT zipcode, ROUND(CAST(AVG(r.rent) AS numeric), 2) AS average_rent,
    RANK() OVER (ORDER BY AVG(rent)) AS rent_rank
    FROM rents r
    WHERE date BETWEEN '2023-01-01' AND '2023-01-31'
    GROUP BY zipcode
),
MaxRank AS (
    SELECT MAX(rent_rank) AS max_rank FROM RentRanking
)
SELECT rr.zipcode, rr.average_rent, 
       (SELECT COUNT(*) FROM trees WHERE zipcode = rr.zipcode) AS tree_count,
       (SELECT COUNT(*) FROM nyc311_complaints WHERE zipcode = rr.zipcode AND date BETWEEN '2023-01-01' AND '2023-01-31') AS complaint_count
FROM RentRanking rr, MaxRank
WHERE rr.rent_rank <= 5 OR rr.rent_rank >= (MaxRank.max_rank - 4)
ORDER BY rr.average_rent;
