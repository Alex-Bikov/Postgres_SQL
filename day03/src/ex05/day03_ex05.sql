WITH p1 AS (SELECT pi.name AS pizzeria_name
            FROM person p
                     JOIN person_visits pv on p.id = pv.person_id
                     JOIN pizzeria pi on pi.id = pv.pizzeria_id
            WHERE p.name = 'Andrey'),
     p2 AS (SELECT p2.name AS pizzeria_name
            FROM person p
                     JOIN person_order po on p.id = po.person_id
                     JOIN menu m on m.id = po.menu_id
                     JOIN pizzeria p2 on p2.id = m.pizzeria_id
            WHERE p.name = 'Andrey')
SELECT p1.pizzeria_name
FROM p1
EXCEPT
SELECT p2.pizzeria_name
FROM p2
ORDER BY 1;


