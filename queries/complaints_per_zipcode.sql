
SELECT zipcode, COUNT(*) AS complaint_count
FROM nyc311_complaints
WHERE date BETWEEN '2022-10-01' AND '2023-09-30'
GROUP BY zipcode
ORDER BY complaint_count DESC;
