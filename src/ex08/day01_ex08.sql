SELECT
  po.order_date AS data,
  CONCAT(p.name, ' (age:', p.age, ')') AS name
FROM person_order po

NATURAL JOIN person p

ORDER BY data ASC,
         name ASC;
