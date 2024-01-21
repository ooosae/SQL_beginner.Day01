SELECT object_name
FROM (
    SELECT pizza_name AS object_name
    FROM menu

    UNION ALL

    SELECT name AS object_name
    FROM person
) AS combined_data

ORDER BY
    object_name;
