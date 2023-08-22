SELECT DISTINCT p.name
FROM person p
         JOIN person_order po on p.id = po.person_id
         JOIN menu m on m.id = po.menu_id
         JOIN pizzeria pi on pi.id = m.pizzeria_id ORDER BY 1;


