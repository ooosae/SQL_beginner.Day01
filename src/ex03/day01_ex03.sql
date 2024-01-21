SELECT DISTINCT
  po.order_date AS date,
  po.person_id AS id
FROM person_order po

WHERE EXISTS (
  SELECT 1
  FROM person_visits pv
  WHERE po.person_id = pv.person_id
    AND po.order_date = pv.visit_date
)
ORDER BY date ASC,
         id DESC;
