WITH red_toys AS (
    SELECT toy_name, price
    FROM toys
    WHERE color = 'red'
)
SELECT toy_name
FROM red_toys
WHERE price > 10;
