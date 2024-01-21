SELECT pizza_name
FROM (

    SELECT pizza_name,
           ROW_NUMBER()
    OVER (PARTITION BY pizza_name ORDER BY pizza_name DESC)
    AS rn
    FROM menu

) AS subquery
WHERE rn = 1

ORDER BY pizza_name DESC;
