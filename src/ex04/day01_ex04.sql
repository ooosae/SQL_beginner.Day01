SELECT po.person_id - pv.person_id AS id_difference
FROM person_order po,
     person_visits pv
WHERE po.order_date = '2022-01-07'
  AND pv.visit_date = '2022-01-07'
ORDER BY id_difference;
