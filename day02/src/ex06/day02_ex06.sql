SELECT m.pizza_name, pi.name as pizzeria_name
FROM menu m
         JOIN person_order pe on m.id = pe.menu_id
         JOIN pizzeria pi on m.pizzeria_id = pi.id
         JOIN person p on p.id = pe.person_id
WHERE p.name = 'Denis'
   or p.name = 'Anna'
ORDER BY 1, 2
;
