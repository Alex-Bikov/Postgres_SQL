(SELECT pi.name, COUNT(*) as count, 'visit' as action_type
FROM pizzeria pi
         JOIN person_visits pv on pi.id = pv.pizzeria_id
GROUP BY pi.id, pv.pizzeria_id LIMIT 3)
UNION
(SELECT pi.name, COUNT(*) as count, 'order' as action_type
FROM pizzeria pi
         JOIN menu m on pi.id = m.pizzeria_id
         JOIN person_order po on m.id = po.menu_id GROUP BY pi.id LIMIT 3) ORDER BY action_type, count DESC ;
