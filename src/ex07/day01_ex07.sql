SELECT
  po.order_date AS data,
  CONCAT(p.name, ' (age:', p.age, ')') AS name
FROM person_order po

JOIN person p ON po.person_id = p.id

ORDER BY data ASC,
         name ASC;
