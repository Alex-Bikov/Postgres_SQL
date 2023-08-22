WITH girl AS (SELECT pi.name AS pizzeria_name
              FROM person p
                       JOIN person_order po on p.id = po.person_id
                       JOIN menu m on m.id = po.menu_id
                       JOIN pizzeria pi on pi.id = m.pizzeria_id
              WHERE p.gender = 'female'
              EXCEPT
              SELECT pi.name AS pizzeria_name
              FROM person p
                       JOIN person_order po on p.id = po.person_id
                       JOIN menu m on m.id = po.menu_id
                       JOIN pizzeria pi on pi.id = m.pizzeria_id
              WHERE p.gender = 'male'),
     man AS (SELECT pi.name AS pizzeria_name
             FROM person p
                      JOIN person_order po on p.id = po.person_id
                      JOIN menu m on m.id = po.menu_id
                      JOIN pizzeria pi on pi.id = m.pizzeria_id
             WHERE p.gender = 'male'
             EXCEPT
             SELECT pi.name AS pizzeria_name
             FROM person p
                      JOIN person_order po on p.id = po.person_id
                      JOIN menu m on m.id = po.menu_id
                      JOIN pizzeria pi on pi.id = m.pizzeria_id
             WHERE p.gender = 'female')
SELECT girl.pizzeria_name
FROM girl
UNION
SELECT man.pizzeria_name
FROM man
ORDER BY 1;

