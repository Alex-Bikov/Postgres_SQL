SELECT action_date, person.name as person_name FROM
(SELECT order_date AS action_date, person_id FROM person_order
INTERSECT ALL SELECT visit_date, person_id FROM person_visits) as x
INNER JOIN person ON x.person_id=person.id
ORDER BY action_date, person.name DESC
;