WITH man AS (SELECT pi.name, count(*)
             FROM person_visits pv
                      JOIN person p on p.id = pv.person_id
                      JOIN pizzeria pi on pi.id = pv.pizzeria_id
             WHERE p.gender = 'male'
             GROUP BY pi.name
             ORDER BY 2),

     girl AS (SELECT pi.name, count(*)
              FROM person_visits pv
                       JOIN person p on p.id = pv.person_id
                       JOIN pizzeria pi on pi.id = pv.pizzeria_id
              WHERE p.gender = 'female'
              GROUP BY pi.name
              ORDER BY 2)

SELECT m.name
FROM man m
         JOIN girl g on m.name = g.name
WHERE m.count != g.count
ORDER BY 1
;
